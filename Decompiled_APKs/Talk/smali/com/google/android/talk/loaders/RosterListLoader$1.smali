.class Lcom/google/android/talk/loaders/RosterListLoader$1;
.super Landroid/database/ContentObserver;
.source "RosterListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/loaders/RosterListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/loaders/RosterListLoader;


# direct methods
.method constructor <init>(Lcom/google/android/talk/loaders/RosterListLoader;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/talk/loaders/RosterListLoader$1;->this$0:Lcom/google/android/talk/loaders/RosterListLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/talk/loaders/RosterListLoader$1;->this$0:Lcom/google/android/talk/loaders/RosterListLoader;

    const-string v1, "RosterListLoader.mContentObserver.onChange"

    #calls: Lcom/google/android/talk/loaders/RosterListLoader;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/loaders/RosterListLoader;->access$000(Lcom/google/android/talk/loaders/RosterListLoader;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/google/android/talk/loaders/RosterListLoader$1;->this$0:Lcom/google/android/talk/loaders/RosterListLoader;

    invoke-virtual {v0}, Lcom/google/android/talk/loaders/RosterListLoader;->forceLoad()V

    .line 36
    return-void
.end method
