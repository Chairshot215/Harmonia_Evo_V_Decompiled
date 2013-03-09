.class public Lcom/android/htccontacts/model/BaseAccountType$HtcEventActionInflater;
.super Lcom/android/htccontacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcEventActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/android/htccontacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 837
    const-string v0, "data2"

    return-object v0
.end method

.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 842
    invoke-static {p1}, Lcom/htc/provider/HtcContactsContract$HtcEvent;->getTypeResource(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method
