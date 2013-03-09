.class Lcom/htc/CustomizationSetup/SIMChangedActivity$2;
.super Ljava/lang/Object;
.source "SIMChangedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/CustomizationSetup/SIMChangedActivity;->createSIMChangedConfirmation()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/CustomizationSetup/SIMChangedActivity;


# direct methods
.method constructor <init>(Lcom/htc/CustomizationSetup/SIMChangedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity$2;->this$0:Lcom/htc/CustomizationSetup/SIMChangedActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 181
    const-string v0, "SIMChangedActivity"

    const-string v1, "createSIMChangedConfirmation() later is pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity$2;->this$0:Lcom/htc/CustomizationSetup/SIMChangedActivity;

    const/4 v1, 0x2

    #setter for: Lcom/htc/CustomizationSetup/SIMChangedActivity;->mOptionChoose:I
    invoke-static {v0, v1}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->access$202(Lcom/htc/CustomizationSetup/SIMChangedActivity;I)I

    .line 183
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity$2;->this$0:Lcom/htc/CustomizationSetup/SIMChangedActivity;

    #calls: Lcom/htc/CustomizationSetup/SIMChangedActivity;->NotifyLater()V
    invoke-static {v0}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->access$400(Lcom/htc/CustomizationSetup/SIMChangedActivity;)V

    .line 184
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity$2;->this$0:Lcom/htc/CustomizationSetup/SIMChangedActivity;

    const/4 v1, 0x0

    #calls: Lcom/htc/CustomizationSetup/SIMChangedActivity;->cleanUp(Z)V
    invoke-static {v0, v1}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->access$300(Lcom/htc/CustomizationSetup/SIMChangedActivity;Z)V

    .line 185
    return-void
.end method
