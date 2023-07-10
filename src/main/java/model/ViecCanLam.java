package model;

import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table
public class ViecCanLam {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long maCongViec;

    @Column(nullable = false)
    private String tenCongViec;

    @Column(nullable = false)
    private Date ngayLam;

    @Column(nullable = false)
    private Boolean daXong;

    @Column(nullable = false)
    private Integer tienDo;

    public ViecCanLam() {
    }

    public ViecCanLam(Long maCongViec, String tenCongViec, Date ngayLam, Boolean daXong, Integer tienDo) {
        this.maCongViec = maCongViec;
        this.tenCongViec = tenCongViec;
        this.ngayLam = ngayLam;
        this.daXong = daXong;
        this.tienDo = tienDo;
    }

    public Long getMaCongViec() {
        return maCongViec;
    }

    public void setMaCongViec(Long maCongViec) {
        this.maCongViec = maCongViec;
    }

    public String getTenCongViec() {
        return tenCongViec;
    }

    public void setTenCongViec(String tenCongViec) {
        this.tenCongViec = tenCongViec;
    }

    public Date getNgayLam() {
        return ngayLam;
    }

    public void setNgayLam(Date ngayLam) {
        this.ngayLam = ngayLam;
    }

    public Boolean getDaXong() {
        return daXong;
    }

    public void setDaXong(Boolean daXong) {
        this.daXong = daXong;
    }

    public Integer getTienDo() {
        return tienDo;
    }

    public void setTienDo(Integer tienDo) {
        this.tienDo = tienDo;
    }

    @Override
    public String toString() {
        return "ViecCanLam{" +
                "maCongViec=" + maCongViec +
                ", tenCongViec='" + tenCongViec + '\'' +
                ", ngayLam=" + ngayLam +
                ", daXong=" + daXong +
                ", tienDo=" + tienDo +
                '}';
    }
}
