.class Lcom/htc/cs/activity/accountactivities/CSSettingActivity$3;
.super Ljava/lang/Object;
.source "CSSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 123
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$3;->this$0:Lcom/htc/cs/activity/accountactivities/CSSettingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 125
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 126
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$3;->this$0:Lcom/htc/cs/activity/accountactivities/CSSettingActivity;

    invoke-virtual {v0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->finish()V

    .line 127
    return-void
.end method
