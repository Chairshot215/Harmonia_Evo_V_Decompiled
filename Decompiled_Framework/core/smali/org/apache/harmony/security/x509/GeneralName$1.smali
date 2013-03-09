.class final Lorg/apache/harmony/security/x509/GeneralName$1;
.super Lorg/apache/harmony/security/asn1/ASN1Choice;
.source "GeneralName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/GeneralName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeneralName: unknown tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, Lorg/apache/harmony/security/x509/OtherName;

    invoke-direct {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(Lorg/apache/harmony/security/x509/OtherName;)V

    :goto_0
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v2

    #setter for: Lorg/apache/harmony/security/x509/GeneralName;->encoding:[B
    invoke-static {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;->access$202(Lorg/apache/harmony/security/x509/GeneralName;[B)[B

    return-object v0

    :pswitch_1
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, Lorg/apache/harmony/security/x509/ORAddress;

    invoke-direct {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(Lorg/apache/harmony/security/x509/ORAddress;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, Lorg/apache/harmony/security/x501/Name;

    invoke-direct {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(Lorg/apache/harmony/security/x501/Name;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, Lorg/apache/harmony/security/x509/EDIPartyName;

    invoke-direct {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(Lorg/apache/harmony/security/x509/EDIPartyName;)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeneralName: scheme is missing in URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    invoke-direct {v0, v2, v1}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>([B)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getIndex(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/apache/harmony/security/x509/GeneralName;

    #getter for: Lorg/apache/harmony/security/x509/GeneralName;->tag:I
    invoke-static {p1}, Lorg/apache/harmony/security/x509/GeneralName;->access$100(Lorg/apache/harmony/security/x509/GeneralName;)I

    move-result v0

    return v0
.end method

.method public getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lorg/apache/harmony/security/x509/GeneralName;

    #getter for: Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;
    invoke-static {p1}, Lorg/apache/harmony/security/x509/GeneralName;->access$000(Lorg/apache/harmony/security/x509/GeneralName;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
