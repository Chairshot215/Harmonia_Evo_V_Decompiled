.class Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener$1;
.super Ljava/util/TimerTask;
.source "AppIconProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener$1;->this$0:Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener$1;->this$0:Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;->callOnComplete()V

    .line 122
    return-void
.end method
