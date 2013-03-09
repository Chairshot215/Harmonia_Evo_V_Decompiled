.class Lcom/htc/android/htcime/settings/DAMDemo$3;
.super Ljava/lang/Object;
.source "DAMDemo.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


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
    .line 117
    iput-object p1, p0, Lcom/htc/android/htcime/settings/DAMDemo$3;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/android/htcime/settings/DAMDemo$3;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    iput p3, v0, Lcom/htc/android/htcime/settings/DAMDemo;->mPosition:I

    .line 121
    iget-object v1, p0, Lcom/htc/android/htcime/settings/DAMDemo$3;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    iget-object v2, p0, Lcom/htc/android/htcime/settings/DAMDemo$3;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    iget-object v0, p0, Lcom/htc/android/htcime/settings/DAMDemo$3;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    #getter for: Lcom/htc/android/htcime/settings/DAMDemo;->langList:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/android/htcime/settings/DAMDemo;->access$000(Lcom/htc/android/htcime/settings/DAMDemo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/htc/android/htcime/settings/DAMDemo;->getLangIdByPath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/htc/android/htcime/settings/DAMDemo;->access$100(Lcom/htc/android/htcime/settings/DAMDemo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/htc/android/htcime/settings/DAMDemo;->mSelectedLang:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/htc/android/htcime/settings/DAMDemo$3;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    #getter for: Lcom/htc/android/htcime/settings/DAMDemo;->mDialog:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-static {v0}, Lcom/htc/android/htcime/settings/DAMDemo;->access$400(Lcom/htc/android/htcime/settings/DAMDemo;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/android/htcime/settings/DAMDemo$3;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    #getter for: Lcom/htc/android/htcime/settings/DAMDemo;->langNameList:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/android/htcime/settings/DAMDemo;->access$200(Lcom/htc/android/htcime/settings/DAMDemo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 123
    iget-object v0, p0, Lcom/htc/android/htcime/settings/DAMDemo$3;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    #getter for: Lcom/htc/android/htcime/settings/DAMDemo;->mDialog:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-static {v0}, Lcom/htc/android/htcime/settings/DAMDemo;->access$400(Lcom/htc/android/htcime/settings/DAMDemo;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 124
    return-void
.end method
