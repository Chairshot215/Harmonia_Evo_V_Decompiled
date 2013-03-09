.class Lcom/android/settings/Settings$1$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/Settings$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/Settings$1;


# direct methods
.method constructor <init>(Lcom/android/settings/Settings$1;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/settings/Settings$1$1;->this$1:Lcom/android/settings/Settings$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/Settings$1$1;->this$1:Lcom/android/settings/Settings$1;

    iget-object v0, v0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    #calls: Lcom/android/settings/Settings;->prepareHeaders()V
    invoke-static {v0}, Lcom/android/settings/Settings;->access$000(Lcom/android/settings/Settings;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/Settings$1$1;->this$1:Lcom/android/settings/Settings$1;

    iget-object v0, v0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    invoke-virtual {v0}, Lcom/android/settings/Settings;->invalidateHeaders()V

    .line 119
    return-void
.end method
