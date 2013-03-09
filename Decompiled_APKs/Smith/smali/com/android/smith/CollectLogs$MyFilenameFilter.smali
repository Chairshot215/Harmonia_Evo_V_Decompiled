.class Lcom/android/smith/CollectLogs$MyFilenameFilter;
.super Ljava/lang/Object;
.source "CollectLogs.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/CollectLogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyFilenameFilter"
.end annotation


# instance fields
.field ext:Ljava/lang/String;

.field showHiddenFiles:Z

.field final synthetic this$0:Lcom/android/smith/CollectLogs;


# direct methods
.method public constructor <init>(Lcom/android/smith/CollectLogs;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter "ext"
    .parameter "showHiddenFiles"

    .prologue
    .line 875
    iput-object p1, p0, Lcom/android/smith/CollectLogs$MyFilenameFilter;->this$0:Lcom/android/smith/CollectLogs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/smith/CollectLogs$MyFilenameFilter;->ext:Ljava/lang/String;

    .line 877
    iput-boolean p3, p0, Lcom/android/smith/CollectLogs$MyFilenameFilter;->showHiddenFiles:Z

    .line 878
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4
    .parameter "dir"
    .parameter "name"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 880
    if-eqz p2, :cond_0

    iget-boolean v2, p0, Lcom/android/smith/CollectLogs$MyFilenameFilter;->showHiddenFiles:Z

    if-nez v2, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 884
    :cond_1
    :goto_0
    return v0

    .line 882
    :cond_2
    iget-object v1, p0, Lcom/android/smith/CollectLogs$MyFilenameFilter;->ext:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 884
    iget-object v0, p0, Lcom/android/smith/CollectLogs$MyFilenameFilter;->ext:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
