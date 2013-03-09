.class public Lcom/htc/cscore/restapi/json/HtcHubContent;
.super Ljava/lang/Object;
.source "HtcHubContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/restapi/json/HtcHubContent$Notification;,
        Lcom/htc/cscore/restapi/json/HtcHubContent$Alarm;,
        Lcom/htc/cscore/restapi/json/HtcHubContent$Ringtone;,
        Lcom/htc/cscore/restapi/json/HtcHubContent$Soundset;,
        Lcom/htc/cscore/restapi/json/HtcHubContent$Wallpaper;,
        Lcom/htc/cscore/restapi/json/HtcHubContent$Widget;,
        Lcom/htc/cscore/restapi/json/HtcHubContent$Skin;,
        Lcom/htc/cscore/restapi/json/HtcHubContent$Scene;,
        Lcom/htc/cscore/restapi/json/HtcHubContent$Music;,
        Lcom/htc/cscore/restapi/json/HtcHubContent$MusicTrack;,
        Lcom/htc/cscore/restapi/json/HtcHubContent$Application;,
        Lcom/htc/cscore/restapi/json/HtcHubContent$HtcHubItem;
    }
.end annotation


# instance fields
.field public alarms:Lcom/htc/cscore/restapi/json/SearchResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/json/HtcHubContent$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field public apps:Lcom/htc/cscore/restapi/json/SearchResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/json/HtcHubContent$Application;",
            ">;"
        }
    .end annotation
.end field

.field public music:Lcom/htc/cscore/restapi/json/SearchResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/json/HtcHubContent$Music;",
            ">;"
        }
    .end annotation
.end field

.field public notifications:Lcom/htc/cscore/restapi/json/SearchResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/json/HtcHubContent$Notification;",
            ">;"
        }
    .end annotation
.end field

.field public ringtones:Lcom/htc/cscore/restapi/json/SearchResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/json/HtcHubContent$Ringtone;",
            ">;"
        }
    .end annotation
.end field

.field public scenes:Lcom/htc/cscore/restapi/json/SearchResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/json/HtcHubContent$Scene;",
            ">;"
        }
    .end annotation
.end field

.field public skins:Lcom/htc/cscore/restapi/json/SearchResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/json/HtcHubContent$Skin;",
            ">;"
        }
    .end annotation
.end field

.field public soundsets:Lcom/htc/cscore/restapi/json/SearchResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/json/HtcHubContent$Soundset;",
            ">;"
        }
    .end annotation
.end field

.field public wallpapers:Lcom/htc/cscore/restapi/json/SearchResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/json/HtcHubContent$Wallpaper;",
            ">;"
        }
    .end annotation
.end field

.field public widgets:Lcom/htc/cscore/restapi/json/SearchResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/json/HtcHubContent$Widget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method
