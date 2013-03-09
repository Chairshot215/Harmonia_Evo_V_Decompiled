.class Lcom/htc/sdm/service/SDMCWAddSoundService$1;
.super Ljava/lang/Object;
.source "SDMCWAddSoundService.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sdm/service/SDMCWAddSoundService;->scanMediaFile(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdm/service/SDMCWAddSoundService;


# direct methods
.method constructor <init>(Lcom/htc/sdm/service/SDMCWAddSoundService;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/htc/sdm/service/SDMCWAddSoundService$1;->this$0:Lcom/htc/sdm/service/SDMCWAddSoundService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/sdm/service/SDMCWAddSoundService$1;->this$0:Lcom/htc/sdm/service/SDMCWAddSoundService;

    invoke-static {v0}, Lcom/htc/sdm/service/SDMCWAddSoundService;->access$008(Lcom/htc/sdm/service/SDMCWAddSoundService;)I

    .line 146
    const-string v0, "SDM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SDMCWAddSoundService] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sdm/service/SDMCWAddSoundService$1;->this$0:Lcom/htc/sdm/service/SDMCWAddSoundService;

    #getter for: Lcom/htc/sdm/service/SDMCWAddSoundService;->numMediaFileScanned:I
    invoke-static {v2}, Lcom/htc/sdm/service/SDMCWAddSoundService;->access$000(Lcom/htc/sdm/service/SDMCWAddSoundService;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " media scan "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " done"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method
