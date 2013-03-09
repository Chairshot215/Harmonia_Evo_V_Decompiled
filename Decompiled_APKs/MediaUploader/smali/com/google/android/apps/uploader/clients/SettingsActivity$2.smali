.class Lcom/google/android/apps/uploader/clients/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/clients/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$2;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$2;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    #calls: Lcom/google/android/apps/uploader/clients/SettingsActivity;->upload()V
    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->access$200(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V

    .line 123
    return-void
.end method
