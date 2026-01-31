package beholder_daemon.entity;
import jakarta.persistence.*;
import lombok.Data;

import java.io.IOException;
import java.util.Arrays;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import beholder_daemon.utils.GzipUtils;

@Entity
@Table(name = "contract_code")
public class ContractCode {
    
    @Id
    @Column(name = "address", length = 66, nullable = false)
    private String address;
    
    @Lob
    @JsonIgnore
    @Column(name = "verifiedCode", columnDefinition = "LONGBLOB")
    private byte[] verifiedCode;
    
    @Column(name = "verifiedStatus", length = 50)
    private String verifiedStatus;
    
    @Column(name = "verifiedProxyChain", columnDefinition = "TEXT")
    private String verifiedProxyChain = "";
    
    @Lob
    @JsonIgnore
    @Column(name = "decompiledCode", columnDefinition = "LONGBLOB")
    private byte[] decompiledCode;
    
    @Column(name = "decompiledStatus", length = 50)
    private String decompiledStatus;
    
    @Column(name = "decompiledProxyChain", columnDefinition = "TEXT")
    private String decompiledProxyChain = "";

    @Column(length = 200)
    private String verifiedFilename;

    @Column
    private Short eoa = 0; // 0 contract;1 normal eoa; 2 smart eoa

    @Column(length = 42)
    private String smartEoaAddress;

    @Lob
    @JsonIgnore
    @Column(columnDefinition = "LONGBLOB")
    private byte[] binaryCode;
    
    // Constructors
    public ContractCode() {}
    
    public ContractCode(String address) {
        this.address = address;
    }
    
    // Getters and Setters
    public String getAddress() { return address; }
    public void setAddress(String address) { this.address = address; }
    
    public byte[] getVerifiedCode() { return verifiedCode; }
    public void setVerifiedCode(byte[] verifiedCode) { this.verifiedCode = verifiedCode; }
    
    public String getVerifiedStatus() { return verifiedStatus; }
    public void setVerifiedStatus(String verifiedStatus) { this.verifiedStatus = verifiedStatus; }
    
    public String getVerifiedProxyChain() { return verifiedProxyChain; }
    public void setVerifiedProxyChain(String verifiedProxyChain) { 
        this.verifiedProxyChain = verifiedProxyChain != null ? verifiedProxyChain : "";
    }
    public void setVerifiedFilename(String verifiedFilename) {
        this.verifiedFilename = verifiedFilename;
    }
    public String getVerifiedFilename() {
        return verifiedFilename;
    }
    public byte[] getDecompiledCode() { return decompiledCode; }
    public void setDecompiledCode(byte[] decompiledCode) { this.decompiledCode = decompiledCode; }
    
    public String getDecompiledStatus() { return decompiledStatus; }
    public void setDecompiledStatus(String decompiledStatus) { this.decompiledStatus = decompiledStatus; }
    
    public String getDecompiledProxyChain() { return decompiledProxyChain; }
    public void setDecompiledProxyChain(String decompiledProxyChain) { 
        this.decompiledProxyChain = decompiledProxyChain != null ? decompiledProxyChain : "";
    }
        // 压缩方法
    public void setVerifiedCodeCompressed(String code) throws IOException {
        this.verifiedCode = GzipUtils.compress(code);
    }
    public void setDecompiledCodeCompressed(String code) throws IOException {
        this.decompiledCode = GzipUtils.compress(code);
    }
    public void setBinary(String code) throws IOException {
        this.binaryCode = GzipUtils.compress(code);
    }
    public Short getEoa() { return eoa; }
    public void setEoa(Short eoa) { this.eoa = eoa; }
    // 解压方法
    @JsonProperty("verifiedCode")
    public String getVerifiedCodeDecompressed() throws IOException {
        if (verifiedCode == null) return null;
        return GzipUtils.decompress(verifiedCode);
    }
    @JsonProperty("decompiledCode")
    public String getDecompiledCodeDecompressed() throws IOException {
        if (decompiledCode == null) return null;
        return GzipUtils.decompress(decompiledCode);
    }
    @JsonProperty("binaryCode")
    public String getBinary() throws IOException {
        if (binaryCode == null) return null;
        return GzipUtils.decompress(binaryCode);
    }

    public String getSmartEoaAddress() { return smartEoaAddress; }
    public void setSmartEoaAddress(String address) { this.smartEoaAddress = address; }
}