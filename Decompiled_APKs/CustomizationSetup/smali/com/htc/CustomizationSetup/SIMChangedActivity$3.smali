.class Lcom/htc/CustomizationSetup/SIMChangedActivity$3;
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
    .line 172
    iput-object p1, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity$3;->this$0:Lcom/htc/CustomizationSetup/SIMChangedActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 174
    const-string v0, "SIMChangedActivity"

    const-string v1, "createSIMChangedConfirmation() yes is pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity$3;->this$0:Lcom/htc/CustomizationSetup/SIMChangedActivity;

    const/4 v1, 0x1

    #setter for: Lcom/htc/CustomizationSetup/SIMChangedActivity;->mOptionChoose:I
    invoke-static {v0, v1}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->access$202(Lcom/htc/CustomizationSetup/SIMChangedActivity;I)I

    .line 176
    new-instance v0, Lcom/htc/CustomizationSetup/SIMChangedActivity$ParseDataTask;

    iget-object v1, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity$3;->this$0:Lcom/htc/CustomizationSetup/SIMChangedActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/CustomizationSetup/SIMChangedActivity$ParseDataTask;-><init>(Lcom/htc/CustomizationSetup/SIMChangedActivity;Lcom/htc/CustomizationSetup/SIMChangedActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/CustomizationSetup/SIMChangedActivity$ParseDataTask;->execute([Ljava/lang/Object;)Lcom/htc/CustomizationSetup/AsyncTask;

    .line 178
    return-void
.end method
