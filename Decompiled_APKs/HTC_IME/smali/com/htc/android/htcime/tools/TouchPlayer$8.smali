.class Lcom/htc/android/htcime/tools/TouchPlayer$8;
.super Ljava/lang/Object;
.source "TouchPlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/tools/TouchPlayer;->showDeviceDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/tools/TouchPlayer;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/tools/TouchPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/htc/android/htcime/tools/TouchPlayer$8;->this$0:Lcom/htc/android/htcime/tools/TouchPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 386
    iget-object v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer$8;->this$0:Lcom/htc/android/htcime/tools/TouchPlayer;

    #getter for: Lcom/htc/android/htcime/tools/TouchPlayer;->mSetShakeList:[Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/htcime/tools/TouchPlayer;->access$600(Lcom/htc/android/htcime/tools/TouchPlayer;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/tools/TouchPlayer$8;->this$0:Lcom/htc/android/htcime/tools/TouchPlayer;

    #getter for: Lcom/htc/android/htcime/tools/TouchPlayer;->mSetShakeIndex:I
    invoke-static {v3}, Lcom/htc/android/htcime/tools/TouchPlayer;->access$700(Lcom/htc/android/htcime/tools/TouchPlayer;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 387
    .local v1, shake_mm:F
    iget-object v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer$8;->this$0:Lcom/htc/android/htcime/tools/TouchPlayer;

    #getter for: Lcom/htc/android/htcime/tools/TouchPlayer;->mSetDeviceValue:[Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/htcime/tools/TouchPlayer;->access$800(Lcom/htc/android/htcime/tools/TouchPlayer;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/tools/TouchPlayer$8;->this$0:Lcom/htc/android/htcime/tools/TouchPlayer;

    #getter for: Lcom/htc/android/htcime/tools/TouchPlayer;->mSetDeviceIndex:I
    invoke-static {v3}, Lcom/htc/android/htcime/tools/TouchPlayer;->access$900(Lcom/htc/android/htcime/tools/TouchPlayer;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 388
    .local v0, pixpermm:F
    iget-object v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer$8;->this$0:Lcom/htc/android/htcime/tools/TouchPlayer;

    iget-object v3, p0, Lcom/htc/android/htcime/tools/TouchPlayer$8;->this$0:Lcom/htc/android/htcime/tools/TouchPlayer;

    #getter for: Lcom/htc/android/htcime/tools/TouchPlayer;->mCurListPosition:I
    invoke-static {v3}, Lcom/htc/android/htcime/tools/TouchPlayer;->access$000(Lcom/htc/android/htcime/tools/TouchPlayer;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/htcime/tools/TouchPlayer$8;->this$0:Lcom/htc/android/htcime/tools/TouchPlayer;

    #getter for: Lcom/htc/android/htcime/tools/TouchPlayer;->mSetDeviceList:[Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/android/htcime/tools/TouchPlayer;->access$1000(Lcom/htc/android/htcime/tools/TouchPlayer;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcime/tools/TouchPlayer$8;->this$0:Lcom/htc/android/htcime/tools/TouchPlayer;

    #getter for: Lcom/htc/android/htcime/tools/TouchPlayer;->mSetDeviceIndex:I
    invoke-static {v5}, Lcom/htc/android/htcime/tools/TouchPlayer;->access$900(Lcom/htc/android/htcime/tools/TouchPlayer;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/htc/android/htcime/tools/TouchPlayer;->updateList(ILjava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/htc/android/htcime/tools/TouchPlayer;->access$300(Lcom/htc/android/htcime/tools/TouchPlayer;ILjava/lang/String;)V

    .line 389
    iget-object v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer$8;->this$0:Lcom/htc/android/htcime/tools/TouchPlayer;

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-float v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/htc/android/htcime/tools/TouchPlayer;->updateList(ILjava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/htc/android/htcime/tools/TouchPlayer;->access$300(Lcom/htc/android/htcime/tools/TouchPlayer;ILjava/lang/String;)V

    .line 390
    return-void
.end method
