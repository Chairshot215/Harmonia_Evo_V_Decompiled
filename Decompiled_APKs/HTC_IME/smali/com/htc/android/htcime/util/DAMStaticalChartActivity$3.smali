.class Lcom/htc/android/htcime/util/DAMStaticalChartActivity$3;
.super Ljava/lang/Object;
.source "DAMStaticalChartActivity.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->initDAMdata(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/util/DAMStaticalChartActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/util/DAMStaticalChartActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$3;->this$0:Lcom/htc/android/htcime/util/DAMStaticalChartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .parameter "dir"
    .parameter "filename"

    .prologue
    .line 121
    const-string v0, ".log"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
