.class public interface abstract Lcom/futuredial/vxx/VBuilder;
.super Ljava/lang/Object;
.source "VBuilder.java"


# virtual methods
.method public abstract DecodeCurField(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/vxx/codec/DecoderException;
        }
    .end annotation
.end method

.method public abstract end()V
.end method

.method public abstract endProperty()V
.end method

.method public abstract endRecord()V
.end method

.method public abstract propertyGroup(Ljava/lang/String;)V
.end method

.method public abstract propertyName(Ljava/lang/String;)V
.end method

.method public abstract propertyParamType(Ljava/lang/String;)V
.end method

.method public abstract propertyParamValue(Ljava/lang/String;)V
.end method

.method public abstract propertyValues(Ljava/lang/String;ZLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/vxx/codec/DecoderException;
        }
    .end annotation
.end method

.method public abstract propertyValues_MultiFiled(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract start()V
.end method

.method public abstract startProperty()V
.end method

.method public abstract startRecord(Ljava/lang/String;)V
.end method
