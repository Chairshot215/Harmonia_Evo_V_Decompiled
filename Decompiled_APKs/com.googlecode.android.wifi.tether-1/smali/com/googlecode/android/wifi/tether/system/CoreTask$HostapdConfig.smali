.class public Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;
.super Ljava/util/HashMap;
.source "CoreTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/android/wifi/tether/system/CoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HostapdConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/system/CoreTask;


# direct methods
.method public constructor <init>(Lcom/googlecode/android/wifi/tether/system/CoreTask;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->this$0:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public read()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->this$0:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v4, v4, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/conf/hostapd.conf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, filename:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->clear()V

    .line 242
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->this$0:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    invoke-virtual {v3, v1}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->readLinesFromFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 255
    return-object p0

    .line 242
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 243
    .local v2, line:Ljava/lang/String;
    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 245
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, data:[Ljava/lang/String;
    array-length v4, v0

    if-le v4, v7, :cond_2

    .line 249
    aget-object v4, v0, v6

    aget-object v5, v0, v7

    invoke-virtual {p0, v4, v5}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 252
    :cond_2
    aget-object v4, v0, v6

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public write()Z
    .locals 5

    .prologue
    .line 259
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 260
    .local v1, lines:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->this$0:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->this$0:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v4, v4, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/conf/hostapd.conf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->writeLinesToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 260
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 261
    .local v0, key:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
