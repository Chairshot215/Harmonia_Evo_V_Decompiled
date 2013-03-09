.class Lcom/htc/cs/activity/accountactivities/CSSettingActivity$6;
.super Ljava/lang/Object;
.source "CSSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->createCSSettingActivity(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CSSettingActivity;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$6;->this$0:Lcom/htc/cs/activity/accountactivities/CSSettingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 178
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 179
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$6;->this$0:Lcom/htc/cs/activity/accountactivities/CSSettingActivity;

    invoke-virtual {v0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->finish()V

    .line 180
    return-void
.end method
