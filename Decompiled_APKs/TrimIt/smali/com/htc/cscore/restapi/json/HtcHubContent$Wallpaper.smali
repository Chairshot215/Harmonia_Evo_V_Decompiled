.class public Lcom/htc/cscore/restapi/json/HtcHubContent$Wallpaper;
.super Lcom/htc/cscore/restapi/json/HtcHubContent$HtcHubItem;
.source "HtcHubContent.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/json/HtcHubContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wallpaper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/cscore/restapi/json/HtcHubContent$HtcHubItem;-><init>()V

    return-void
.end method
