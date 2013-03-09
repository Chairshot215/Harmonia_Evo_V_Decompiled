.class public final Lcom/htc/fusion/fx/FxPlaybackInfo$FxPlaybackResult;
.super Ljava/lang/Object;
.source "FxPlaybackInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/FxPlaybackInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FxPlaybackResult"
.end annotation


# static fields
.field public static final PLAYBACK_COMPLETED:I = 0x1

.field public static final PLAYBACK_INTERRUPTED:I = 0x2

.field public static final PLAYBACK_NOTSET:I


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/FxPlaybackInfo;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/FxPlaybackInfo$FxPlaybackResult;->this$0:Lcom/htc/fusion/fx/FxPlaybackInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
