.class final Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;
.super Landroid/util/Pair;
.source "AbstractContactDbWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExistingContact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0
    .parameter "rawContactId"
    .parameter "hash"

    .prologue
    .line 248
    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 249
    return-void
.end method


# virtual methods
.method public getRawContactId()J
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSyncHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
