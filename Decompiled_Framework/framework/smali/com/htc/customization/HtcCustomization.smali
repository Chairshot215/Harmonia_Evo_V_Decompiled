.class public interface abstract Lcom/htc/customization/HtcCustomization;
.super Ljava/lang/Object;
.source "HtcCustomization.java"


# virtual methods
.method public abstract getBoolList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/customization/CustomizationValueNotFoundException;
        }
    .end annotation
.end method

.method public abstract getBoolValue(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/customization/CustomizationValueNotFoundException;
        }
    .end annotation
.end method

.method public abstract getBoolValue(Ljava/lang/String;Z)Z
.end method

.method public abstract getIntList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/customization/CustomizationValueNotFoundException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation
.end method

.method public abstract getIntValue(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/customization/CustomizationValueNotFoundException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation
.end method

.method public abstract getIntValue(Ljava/lang/String;I)I
.end method

.method public abstract getStringList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/customization/CustomizationValueNotFoundException;
        }
    .end annotation
.end method

.method public abstract getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/customization/CustomizationValueNotFoundException;
        }
    .end annotation
.end method

.method public abstract getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
