.class Lcom/htc/android/htcime/settings/DAMDemo$2;
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
    .line 77
    iput-object p1, p0, Lcom/htc/android/htcime/settings/DAMDemo$2;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 79
    iget-object v7, p0, Lcom/htc/android/htcime/settings/DAMDemo$2;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    #getter for: Lcom/htc/android/htcime/settings/DAMDemo;->langList:Ljava/util/List;
    invoke-static {v7}, Lcom/htc/android/htcime/settings/DAMDemo;->access$000(Lcom/htc/android/htcime/settings/DAMDemo;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/settings/DAMDemo$2;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    iget v8, v8, Lcom/htc/android/htcime/settings/DAMDemo;->mPosition:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 80
    .local v2, folder:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    .line 81
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    .end local v1           #file:Ljava/io/File;
    :cond_0
    const/4 v4, 0x0

    .line 83
    .local v4, lang:I
    iget-object v7, p0, Lcom/htc/android/htcime/settings/DAMDemo$2;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    iget-object v7, v7, Lcom/htc/android/htcime/settings/DAMDemo;->mSelectedLang:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 84
    iget-object v7, p0, Lcom/htc/android/htcime/settings/DAMDemo$2;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    iget-object v7, v7, Lcom/htc/android/htcime/settings/DAMDemo;->mSelectedLang:Ljava/lang/String;

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 85
    :cond_1
    invoke-static {v4}, Lcom/htc/android/htcime/util/htcDAM;->Reset(I)V

    .line 86
    iget-object v7, p0, Lcom/htc/android/htcime/settings/DAMDemo$2;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    #getter for: Lcom/htc/android/htcime/settings/DAMDemo;->langList:Ljava/util/List;
    invoke-static {v7}, Lcom/htc/android/htcime/settings/DAMDemo;->access$000(Lcom/htc/android/htcime/settings/DAMDemo;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/settings/DAMDemo$2;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    iget v8, v8, Lcom/htc/android/htcime/settings/DAMDemo;->mPosition:I

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 87
    iget-object v7, p0, Lcom/htc/android/htcime/settings/DAMDemo$2;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    #getter for: Lcom/htc/android/htcime/settings/DAMDemo;->langNameList:Ljava/util/List;
    invoke-static {v7}, Lcom/htc/android/htcime/settings/DAMDemo;->access$200(Lcom/htc/android/htcime/settings/DAMDemo;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/settings/DAMDemo$2;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    iget v8, v8, Lcom/htc/android/htcime/settings/DAMDemo;->mPosition:I

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 88
    iget-object v7, p0, Lcom/htc/android/htcime/settings/DAMDemo$2;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    #getter for: Lcom/htc/android/htcime/settings/DAMDemo;->langList:Ljava/util/List;
    invoke-static {v7}, Lcom/htc/android/htcime/settings/DAMDemo;->access$000(Lcom/htc/android/htcime/settings/DAMDemo;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 89
    iget-object v7, p0, Lcom/htc/android/htcime/settings/DAMDemo$2;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    #getter for: Lcom/htc/android/htcime/settings/DAMDemo;->langAdapter:Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;
    invoke-static {v7}, Lcom/htc/android/htcime/settings/DAMDemo;->access$300(Lcom/htc/android/htcime/settings/DAMDemo;)Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;->notifyDataSetChanged()V

    .line 95
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 96
    return-void

    .line 91
    :cond_2
    iget-object v7, p0, Lcom/htc/android/htcime/settings/DAMDemo$2;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    invoke-virtual {v7}, Lcom/htc/android/htcime/settings/DAMDemo;->getApplication()Landroid/app/Application;

    move-result-object v7

    const-string v8, "No DAM data"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 92
    .local v6, toast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 93
    iget-object v7, p0, Lcom/htc/android/htcime/settings/DAMDemo$2;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    invoke-virtual {v7}, Lcom/htc/android/htcime/settings/DAMDemo;->finish()V

    goto :goto_1
.end method
