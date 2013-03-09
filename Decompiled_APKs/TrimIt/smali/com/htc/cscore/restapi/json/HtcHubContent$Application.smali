.class public Lcom/htc/cscore/restapi/json/HtcHubContent$Application;
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
    name = "Application"
.end annotation


# instance fields
.field public Developer:Ljava/lang/String;

.field public DeveloperUrl:Ljava/lang/String;

.field public IsPlugin:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/cscore/restapi/json/HtcHubContent$HtcHubItem;-><init>()V

    return-void
.end method
