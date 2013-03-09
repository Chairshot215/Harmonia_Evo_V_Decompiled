.class Lcom/htc/reportagent/cache/LogCacheManager$MyFileChangedListener;
.super Ljava/lang/Object;
.source "LogCacheManager.java"

# interfaces
.implements Lcom/htc/reportagent/cache/FileChangdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/reportagent/cache/LogCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyFileChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/reportagent/cache/LogCacheManager;


# direct methods
.method private constructor <init>(Lcom/htc/reportagent/cache/LogCacheManager;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/htc/reportagent/cache/LogCacheManager$MyFileChangedListener;->this$0:Lcom/htc/reportagent/cache/LogCacheManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/reportagent/cache/LogCacheManager;Lcom/htc/reportagent/cache/LogCacheManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/htc/reportagent/cache/LogCacheManager$MyFileChangedListener;-><init>(Lcom/htc/reportagent/cache/LogCacheManager;)V

    return-void
.end method


# virtual methods
.method public onAdd(Ljava/io/File;)V
    .locals 5
    .parameter "file"

    .prologue
    .line 130
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/htc/reportagent/cache/LogCacheManager$MyFileChangedListener;->this$0:Lcom/htc/reportagent/cache/LogCacheManager;

    #getter for: Lcom/htc/reportagent/cache/LogCacheManager;->mFiles:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/reportagent/cache/LogCacheManager;->access$100(Lcom/htc/reportagent/cache/LogCacheManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 132
    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v2

    if-nez v2, :cond_0

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onAdd] file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is alread in the list !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;)I

    .line 141
    .end local v0           #f:Ljava/io/File;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    return-void

    .line 137
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/htc/reportagent/cache/LogCacheManager$MyFileChangedListener;->this$0:Lcom/htc/reportagent/cache/LogCacheManager;

    #getter for: Lcom/htc/reportagent/cache/LogCacheManager;->mFiles:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/reportagent/cache/LogCacheManager;->access$100(Lcom/htc/reportagent/cache/LogCacheManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v2, p0, Lcom/htc/reportagent/cache/LogCacheManager$MyFileChangedListener;->this$0:Lcom/htc/reportagent/cache/LogCacheManager;

    #getter for: Lcom/htc/reportagent/cache/LogCacheManager;->mFiles:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/reportagent/cache/LogCacheManager;->access$100(Lcom/htc/reportagent/cache/LogCacheManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 139
    iget-object v2, p0, Lcom/htc/reportagent/cache/LogCacheManager$MyFileChangedListener;->this$0:Lcom/htc/reportagent/cache/LogCacheManager;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/reportagent/cache/LogCacheManager;->access$214(Lcom/htc/reportagent/cache/LogCacheManager;J)J

    goto :goto_0
.end method

.method public onDelete(Ljava/io/File;)V
    .locals 6
    .parameter "file"

    .prologue
    .line 147
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    const/4 v2, 0x0

    .line 149
    .local v2, targetFileInList:Ljava/io/File;
    iget-object v3, p0, Lcom/htc/reportagent/cache/LogCacheManager$MyFileChangedListener;->this$0:Lcom/htc/reportagent/cache/LogCacheManager;

    #getter for: Lcom/htc/reportagent/cache/LogCacheManager;->mFiles:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/reportagent/cache/LogCacheManager;->access$100(Lcom/htc/reportagent/cache/LogCacheManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 150
    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v3

    if-nez v3, :cond_0

    .line 151
    move-object v2, v0

    .line 155
    .end local v0           #f:Ljava/io/File;
    :cond_1
    if-eqz v2, :cond_2

    .line 156
    iget-object v3, p0, Lcom/htc/reportagent/cache/LogCacheManager$MyFileChangedListener;->this$0:Lcom/htc/reportagent/cache/LogCacheManager;

    #getter for: Lcom/htc/reportagent/cache/LogCacheManager;->mFiles:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/reportagent/cache/LogCacheManager;->access$100(Lcom/htc/reportagent/cache/LogCacheManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 157
    iget-object v3, p0, Lcom/htc/reportagent/cache/LogCacheManager$MyFileChangedListener;->this$0:Lcom/htc/reportagent/cache/LogCacheManager;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/htc/reportagent/cache/LogCacheManager;->access$222(Lcom/htc/reportagent/cache/LogCacheManager;J)J

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onDelete] file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is removed in the list !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;)I

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onDelete] total size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/reportagent/cache/LogCacheManager$MyFileChangedListener;->this$0:Lcom/htc/reportagent/cache/LogCacheManager;

    #getter for: Lcom/htc/reportagent/cache/LogCacheManager;->mSize:J
    invoke-static {v4}, Lcom/htc/reportagent/cache/LogCacheManager;->access$200(Lcom/htc/reportagent/cache/LogCacheManager;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", removed file size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;)I

    .line 162
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #targetFileInList:Ljava/io/File;
    :cond_2
    return-void
.end method
