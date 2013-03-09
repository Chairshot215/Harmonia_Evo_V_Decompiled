.class Lcom/android/phone/nbpcd/NBPCDSetting$CountryItemSelect;
.super Ljava/lang/Object;
.source "NBPCDSetting.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/nbpcd/NBPCDSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountryItemSelect"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nbpcd/NBPCDSetting;


# direct methods
.method private constructor <init>(Lcom/android/phone/nbpcd/NBPCDSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 718
    iput-object p1, p0, Lcom/android/phone/nbpcd/NBPCDSetting$CountryItemSelect;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/nbpcd/NBPCDSetting;Lcom/android/phone/nbpcd/NBPCDSetting$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 718
    invoke-direct {p0, p1}, Lcom/android/phone/nbpcd/NBPCDSetting$CountryItemSelect;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 721
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v3, p0, Lcom/android/phone/nbpcd/NBPCDSetting$CountryItemSelect;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting;

    iget-object v3, v3, Lcom/android/phone/nbpcd/NBPCDSetting;->mList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/nbpcd/MCC_ITEM;

    .line 722
    .local v0, item:Lcom/android/phone/nbpcd/MCC_ITEM;
    if-eqz v0, :cond_1

    .line 723
    invoke-virtual {v0}, Lcom/android/phone/nbpcd/MCC_ITEM;->getMcc()Ljava/lang/String;

    move-result-object v1

    .line 724
    .local v1, mcc:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/phone/nbpcd/MCC_ITEM;->getPrimarykey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/nbpcd/NBPCDSetting;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 725
    invoke-static {}, Lcom/android/phone/nbpcd/NBPCDSetting;->access$200()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "NBPCDSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Select MCC:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "PK :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/nbpcd/NBPCDSetting;->access$500()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_0
    iget-object v3, p0, Lcom/android/phone/nbpcd/NBPCDSetting$CountryItemSelect;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting;

    invoke-static {}, Lcom/android/phone/nbpcd/NBPCDSetting;->access$500()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/nbpcd/NBPCDSetting;->findSpeiciedMCC(Ljava/lang/String;)Lcom/android/phone/nbpcd/MCC_ITEM;
    invoke-static {v3, v4}, Lcom/android/phone/nbpcd/NBPCDSetting;->access$600(Lcom/android/phone/nbpcd/NBPCDSetting;Ljava/lang/String;)Lcom/android/phone/nbpcd/MCC_ITEM;

    move-result-object v2

    .line 728
    .local v2, mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    if-eqz v2, :cond_1

    .line 729
    iget-object v3, p0, Lcom/android/phone/nbpcd/NBPCDSetting$CountryItemSelect;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting;

    invoke-virtual {v2}, Lcom/android/phone/nbpcd/MCC_ITEM;->getIDDList()[Lcom/android/phone/nbpcd/IDD_ITEM;

    move-result-object v4

    #calls: Lcom/android/phone/nbpcd/NBPCDSetting;->setupFileListView([Lcom/android/phone/nbpcd/IDD_ITEM;)V
    invoke-static {v3, v4}, Lcom/android/phone/nbpcd/NBPCDSetting;->access$700(Lcom/android/phone/nbpcd/NBPCDSetting;[Lcom/android/phone/nbpcd/IDD_ITEM;)V

    .line 730
    invoke-static {p3}, Lcom/android/phone/nbpcd/NBPCDSetting;->access$802(I)I

    .line 731
    invoke-static {}, Lcom/android/phone/nbpcd/NBPCDSetting;->access$200()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "NBPCDSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current country pos:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/nbpcd/NBPCDSetting;->access$800()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    .end local v1           #mcc:Ljava/lang/String;
    .end local v2           #mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    :cond_1
    return-void
.end method

.method public onNothingSelected(Lcom/htc/widget/HtcAdapterView;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 738
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/phone/nbpcd/NBPCDSetting;->access$802(I)I

    .line 739
    invoke-static {}, Lcom/android/phone/nbpcd/NBPCDSetting;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NBPCDSetting"

    const-string v1, "Reset country pos"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_0
    return-void
.end method
