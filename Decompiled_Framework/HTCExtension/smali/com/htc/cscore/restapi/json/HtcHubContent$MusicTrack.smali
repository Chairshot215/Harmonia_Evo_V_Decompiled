.class public Lcom/htc/cscore/restapi/json/HtcHubContent$MusicTrack;
.super Ljava/lang/Object;
.source "HtcHubContent.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/json/HtcHubContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicTrack"
.end annotation


# instance fields
.field public Name:Ljava/lang/String;

.field public PreviewTrack:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
