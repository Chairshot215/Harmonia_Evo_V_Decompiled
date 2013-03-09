.class Lcom/googlecode/android/wifi/tether/system/CoreTask$1;
.super Ljava/lang/Object;
.source "CoreTask.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/android/wifi/tether/system/CoreTask;->isProcessRunning(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/system/CoreTask;


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/system/CoreTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/system/CoreTask$1;->this$0:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 462
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, ex:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method
