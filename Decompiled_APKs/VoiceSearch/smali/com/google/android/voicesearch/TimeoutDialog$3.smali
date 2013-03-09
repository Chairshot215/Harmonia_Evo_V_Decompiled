.class Lcom/google/android/voicesearch/TimeoutDialog$3;
.super Ljava/lang/Object;
.source "TimeoutDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/TimeoutDialog;->updateCountdownLevel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/TimeoutDialog;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/TimeoutDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/android/voicesearch/TimeoutDialog$3;->this$0:Lcom/google/android/voicesearch/TimeoutDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog$3;->this$0:Lcom/google/android/voicesearch/TimeoutDialog;

    #calls: Lcom/google/android/voicesearch/TimeoutDialog;->updateCountdownLevel()V
    invoke-static {v0}, Lcom/google/android/voicesearch/TimeoutDialog;->access$200(Lcom/google/android/voicesearch/TimeoutDialog;)V

    .line 208
    return-void
.end method
