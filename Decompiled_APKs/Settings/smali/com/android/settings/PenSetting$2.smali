.class Lcom/android/settings/PenSetting$2;
.super Ljava/lang/Object;
.source "PenSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PenSetting;->pen_check(Lcom/htc/preference/HtcPreference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenSetting;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings/PenSetting;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/settings/PenSetting$2;->this$0:Lcom/android/settings/PenSetting;

    iput-object p2, p0, Lcom/android/settings/PenSetting$2;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/settings/PenSetting$2;->val$activity:Landroid/app/Activity;

    #calls: Lcom/android/settings/PenSetting;->startPenTips(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/settings/PenSetting;->access$000(Landroid/content/Context;)V

    .line 195
    return-void
.end method
