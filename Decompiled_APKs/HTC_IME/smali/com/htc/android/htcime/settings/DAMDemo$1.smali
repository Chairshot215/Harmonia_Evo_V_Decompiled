.class Lcom/htc/android/htcime/settings/DAMDemo$1;
.super Ljava/lang/Object;
.source "DAMDemo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/settings/DAMDemo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/settings/DAMDemo;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/settings/DAMDemo;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/android/htcime/settings/DAMDemo$1;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 100
    iget-object v2, p0, Lcom/htc/android/htcime/settings/DAMDemo$1;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    iget v2, v2, Lcom/htc/android/htcime/settings/DAMDemo;->mPosition:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/settings/DAMDemo$1;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    iget v2, v2, Lcom/htc/android/htcime/settings/DAMDemo;->mPosition:I

    iget-object v3, p0, Lcom/htc/android/htcime/settings/DAMDemo$1;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    #getter for: Lcom/htc/android/htcime/settings/DAMDemo;->langList:Ljava/util/List;
    invoke-static {v3}, Lcom/htc/android/htcime/settings/DAMDemo;->access$000(Lcom/htc/android/htcime/settings/DAMDemo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.htc.android.htcime"

    const-string v3, "com.htc.android.htcime.util.DAMStaticalChartActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v3, "folder"

    iget-object v2, p0, Lcom/htc/android/htcime/settings/DAMDemo$1;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    #getter for: Lcom/htc/android/htcime/settings/DAMDemo;->langList:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/android/htcime/settings/DAMDemo;->access$000(Lcom/htc/android/htcime/settings/DAMDemo;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/android/htcime/settings/DAMDemo$1;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    iget v4, v4, Lcom/htc/android/htcime/settings/DAMDemo;->mPosition:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object v3, p0, Lcom/htc/android/htcime/settings/DAMDemo$1;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    iget-object v2, p0, Lcom/htc/android/htcime/settings/DAMDemo$1;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    #getter for: Lcom/htc/android/htcime/settings/DAMDemo;->langList:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/android/htcime/settings/DAMDemo;->access$000(Lcom/htc/android/htcime/settings/DAMDemo;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/android/htcime/settings/DAMDemo$1;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    iget v4, v4, Lcom/htc/android/htcime/settings/DAMDemo;->mPosition:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/htc/android/htcime/settings/DAMDemo;->getLangIdByPath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/htc/android/htcime/settings/DAMDemo;->access$100(Lcom/htc/android/htcime/settings/DAMDemo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, lang:Ljava/lang/String;
    const-string v2, "Orientation"

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/htc/android/htcime/util/htcDAM;->getOrientation(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    iget-object v2, p0, Lcom/htc/android/htcime/settings/DAMDemo$1;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    invoke-virtual {v2, v0}, Lcom/htc/android/htcime/settings/DAMDemo;->startActivity(Landroid/content/Intent;)V

    .line 109
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #lang:Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 110
    return-void
.end method
