.class Lcom/htc/android/worldclock/AlarmKlaxon$1;
.super Ljava/lang/Object;
.source "AlarmKlaxon.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmKlaxon;->play(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmKlaxon;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmKlaxon;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmKlaxon$1;->this$0:Lcom/htc/android/worldclock/AlarmKlaxon;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 138
    const-string v0, "Error occurred while playing audio."

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon$1;->this$0:Lcom/htc/android/worldclock/AlarmKlaxon;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/AlarmKlaxon;->releasePlayer()V

    .line 140
    const/4 v0, 0x1

    return v0
.end method
