.class Lcom/google/android/finsky/activities/myapps/DocumentView$1;
.super Ljava/lang/Object;
.source "DocumentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/myapps/DocumentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/DocumentView;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/myapps/DocumentView;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView$1;->this$0:Lcom/google/android/finsky/activities/myapps/DocumentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView$1;->this$0:Lcom/google/android/finsky/activities/myapps/DocumentView;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    #calls: Lcom/google/android/finsky/activities/myapps/DocumentView;->bind(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->access$000(Lcom/google/android/finsky/activities/myapps/DocumentView;Landroid/os/Bundle;)V

    .line 84
    return-void
.end method
