.class public Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;
.super Ljava/lang/Object;
.source "GServicesDetail.java"

# interfaces
.implements Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetail;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetail;"
    }
.end annotation


# instance fields
.field private final mValue:Lcom/google/android/finsky/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/GservicesValue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/config/GservicesValue;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, this:Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;,"Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail<TE;>;"
    .local p1, value:Lcom/google/android/finsky/config/GservicesValue;,"Lcom/google/android/finsky/config/GservicesValue<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;->mValue:Lcom/google/android/finsky/config/GservicesValue;

    .line 15
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    .local p0, this:Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;,"Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail<TE;>;"
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;->mValue:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    .local p0, this:Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;,"Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail<TE;>;"
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;->mValue:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    .line 25
    .local v0, value:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_0

    .line 26
    const-string v1, "null"

    .line 28
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
