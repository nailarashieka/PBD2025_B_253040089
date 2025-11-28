CREATE TABLE PesananDetail (
    PesananDetailID INT IDENTITY(1,1) PRIMARY KEY,
    PesananID INT NOT NULL,
    ProdukID INT NOT NULL,
    Jumlah INT NOT NULL,
    HargaSatuan DECIMAL(10, 2) NOT NULL,

    CONSTRAINT CHK_JumlahPositif CHECK (Jumlah > 0),
    CONSTRAINT FK_Detail_Header
        FOREIGN KEY (PesananID)
        REFERENCES PesananHeader(PesananID)
        ON DELETE CASCADE, 
    CONSTRAINT FK_Detail_Produk
        FOREIGN KEY (ProdukID)
        REFERENCES Produk(ProdukID)
);