.class Lcom/android/browser/homepages/Template$HashMapEntityData;
.super Ljava/lang/Object;
.source "Template.java"

# interfaces
.implements Lcom/android/browser/homepages/Template$EntityData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/homepages/Template;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HashMapEntityData"
.end annotation


# instance fields
.field mData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/android/browser/homepages/Template$HashMapEntityData;->mData:Ljava/util/HashMap;

    .line 151
    return-void
.end method


# virtual methods
.method public getListIterator(Ljava/lang/String;)Lcom/android/browser/homepages/Template$ListEntityIterator;
    .locals 1
    .parameter "key"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/browser/homepages/Template$HashMapEntityData;->mData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/homepages/Template$ListEntityIterator;

    return-object v0
.end method

.method public writeValue(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "stream"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/browser/homepages/Template$HashMapEntityData;->mData:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 161
    return-void
.end method
