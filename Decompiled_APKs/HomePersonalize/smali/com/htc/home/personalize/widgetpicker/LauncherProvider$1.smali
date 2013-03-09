.class Lcom/htc/home/personalize/widgetpicker/LauncherProvider$1;
.super Ljava/lang/Object;
.source "LauncherProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/widgetpicker/LauncherProvider;->bulkInsertAdjustContainer(Landroid/net/Uri;[Landroid/content/ContentValues;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/ContentValues;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/widgetpicker/LauncherProvider;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/widgetpicker/LauncherProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$1;->this$0:Lcom/htc/home/personalize/widgetpicker/LauncherProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 173
    const-string v2, "container"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 174
    .local v0, container0:I
    const-string v2, "container"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 175
    .local v1, container1:I
    sub-int v2, v0, v1

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    check-cast p1, Landroid/content/ContentValues;

    .end local p1
    check-cast p2, Landroid/content/ContentValues;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/home/personalize/widgetpicker/LauncherProvider$1;->compare(Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method
