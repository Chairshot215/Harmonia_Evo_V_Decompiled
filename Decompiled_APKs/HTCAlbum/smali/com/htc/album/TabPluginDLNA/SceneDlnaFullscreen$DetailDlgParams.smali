.class public Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen$DetailDlgParams;
.super Ljava/lang/Object;
.source "SceneDlnaFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailDlgParams"
.end annotation


# static fields
.field public static final BITRATE14:Ljava/lang/String; = "BITRATE"

.field public static final CALLERNAME01:Ljava/lang/String; = "CALLERNAME"

.field public static final DATE05:Ljava/lang/String; = "DATE"

.field public static final DETAILCLASS:Ljava/lang/String; = "com.htc.album.DetailDlgActivity"

.field public static final DURATION12:Ljava/lang/String; = "DURATION"

.field public static final EXTRA99:Ljava/lang/String; = "EXTRA99"

.field public static final FILENAME16:Ljava/lang/String; = "FILENAME"

.field public static final FILEPATH03:Ljava/lang/String; = "FILEPATH"

.field public static final FRAMERATE13:Ljava/lang/String; = "FRAMERATE"

.field public static final MANUFACTURE10:Ljava/lang/String; = "MANUFACTURE"

.field public static final MODE04:Ljava/lang/String; = "MODE"

.field public static final MODE04_IMG:Ljava/lang/String; = "image"

.field public static final MODE04_VIDEO:Ljava/lang/String; = "video"

.field public static final MODEL11:Ljava/lang/String; = "MODEL"

.field public static final PACKAGENAME:Ljava/lang/String; = "com.htc.album"

.field public static final PARAMVER00:Ljava/lang/String; = "PARAMVERSION"

.field public static final RESOLUTION07:Ljava/lang/String; = "RESOLUTION"

.field public static final SIZE06:Ljava/lang/String; = "SIZE"

.field public static final SOURCE02:Ljava/lang/String; = "SOURCE"

.field public static final SOURCE02_LOCAL:Ljava/lang/String; = "local"

.field public static final SOURCE02_REMOTE:Ljava/lang/String; = "remote"

.field public static final STATUS09:Ljava/lang/String; = "STATUS"

.field public static final TAG:Ljava/lang/String; = "DetailDlgParams"

.field public static final THUMBNAIL15:Ljava/lang/String; = "THUMBNAIL"

.field public static final TYPE08:Ljava/lang/String; = "TYPE"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

.field public static final version:Ljava/lang/String; = "1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 520
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateExtraParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "callername01"
    .parameter "source02"
    .parameter "filepath03"
    .parameter "mode04"
    .parameter "date05"
    .parameter "size06"
    .parameter "resolution07"
    .parameter "type08"
    .parameter "status09"
    .parameter "manufacture10"
    .parameter "model11"
    .parameter "duration12"
    .parameter "framerate13"
    .parameter "bitrate14"
    .parameter "thumbnail15"
    .parameter "filename16"
    .parameter "extra99"

    .prologue
    .line 586
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    if-eqz p8, :cond_0

    if-eqz p9, :cond_0

    if-eqz p10, :cond_0

    if-eqz p11, :cond_0

    if-eqz p12, :cond_0

    if-eqz p13, :cond_0

    if-eqz p14, :cond_0

    if-eqz p15, :cond_0

    if-nez p16, :cond_1

    .line 604
    :cond_0
    const/4 v1, 0x0

    .line 629
    :goto_0
    return-object v1

    .line 607
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 608
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.album"

    const-string v3, "com.htc.album.DetailDlgActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    const-string v2, "PARAMVERSION"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    const-string v2, "CALLERNAME"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    const-string v2, "SOURCE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    const-string v2, "FILEPATH"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    const-string v2, "MODE"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    const-string v2, "DATE"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    const-string v2, "SIZE"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    const-string v2, "RESOLUTION"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    const-string v2, "TYPE"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    const-string v2, "STATUS"

    invoke-virtual {v1, v2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    const-string v2, "MANUFACTURE"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const-string v2, "MODEL"

    invoke-virtual {v1, v2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    const-string v2, "DURATION"

    invoke-virtual {v1, v2, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    const-string v2, "FRAMERATE"

    move-object/from16 v0, p12

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    const-string v2, "BITRATE"

    move-object/from16 v0, p13

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    const-string v2, "THUMBNAIL"

    move-object/from16 v0, p14

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    const-string v2, "FILENAME"

    move-object/from16 v0, p15

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    const-string v2, "EXTRA99"

    move-object/from16 v0, p16

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
