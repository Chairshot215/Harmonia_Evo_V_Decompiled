.class Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$2;
.super Ljava/lang/Object;
.source "SmartGroupConfigurationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->createConfigNumberListViewDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;

.field final synthetic val$items:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$2;->this$0:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;

    iput-object p2, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$2;->val$items:[Ljava/lang/CharSequence;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v3, 0x12

    .line 582
    if-gez p2, :cond_0

    if-gt p2, v3, :cond_2

    .line 583
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$2;->val$items:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, item:Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$2;->this$0:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mConfigNumber:I

    .line 586
    iget-object v1, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$2;->this$0:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;

    iget v1, v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mConfigNumber:I

    if-le v1, v3, :cond_1

    .line 587
    iget-object v1, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$2;->this$0:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;

    const/16 v2, 0x12

    iput v2, v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mConfigNumber:I

    .line 589
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$2;->this$0:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;

    #calls: Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->resetNumberConfigView()V
    invoke-static {v1}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->access$300(Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    .end local v0           #item:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 590
    .restart local v0       #item:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
