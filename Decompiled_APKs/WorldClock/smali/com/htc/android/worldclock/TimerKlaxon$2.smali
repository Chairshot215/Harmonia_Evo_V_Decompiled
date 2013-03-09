.class Lcom/htc/android/worldclock/TimerKlaxon$2;
.super Ljava/lang/Object;
.source "TimerKlaxon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/TimerKlaxon;->play(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/TimerKlaxon;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/TimerKlaxon;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/htc/android/worldclock/TimerKlaxon$2;->this$0:Lcom/htc/android/worldclock/TimerKlaxon;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 135
    invoke-static {}, Lcom/htc/android/worldclock/AlertUtils;->playTone()V

    .line 136
    return-void
.end method
