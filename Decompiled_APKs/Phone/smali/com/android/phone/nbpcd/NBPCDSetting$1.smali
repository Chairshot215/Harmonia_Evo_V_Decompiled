.class Lcom/android/phone/nbpcd/NBPCDSetting$1;
.super Ljava/lang/Object;
.source "NBPCDSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nbpcd/NBPCDSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nbpcd/NBPCDSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/nbpcd/NBPCDSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/phone/nbpcd/NBPCDSetting$1;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 138
    invoke-static {}, Lcom/android/phone/nbpcd/NBPCDSetting;->access$000()I

    move-result v2

    if-ltz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/android/phone/nbpcd/NBPCDSetting$1;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting;

    #getter for: Lcom/android/phone/nbpcd/NBPCDSetting;->mIDDListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/phone/nbpcd/NBPCDSetting;->access$100(Lcom/android/phone/nbpcd/NBPCDSetting;)Landroid/widget/ListView;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/nbpcd/NBPCDSetting;->access$000()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 143
    .local v1, iddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "IDD"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/nbpcd/IDD_ITEM;

    .line 144
    .local v0, iddItem:Lcom/android/phone/nbpcd/IDD_ITEM;
    if-eqz v0, :cond_1

    .line 145
    invoke-static {}, Lcom/android/phone/nbpcd/NBPCDSetting;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "NBPCDSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/phone/nbpcd/IDD_ITEM;->getIDD()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/android/phone/nbpcd/NBPCDSetting$1;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting;

    invoke-virtual {v0}, Lcom/android/phone/nbpcd/IDD_ITEM;->getIDD()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/nbpcd/NBPCDSetting;->changeDefaultIDDValue(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/nbpcd/NBPCDSetting;->access$300(Lcom/android/phone/nbpcd/NBPCDSetting;Ljava/lang/String;)V

    .line 149
    .end local v0           #iddItem:Lcom/android/phone/nbpcd/IDD_ITEM;
    .end local v1           #iddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    iget-object v2, p0, Lcom/android/phone/nbpcd/NBPCDSetting$1;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting;

    invoke-virtual {v2}, Lcom/android/phone/nbpcd/NBPCDSetting;->save()V

    .line 150
    iget-object v2, p0, Lcom/android/phone/nbpcd/NBPCDSetting$1;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting;

    invoke-virtual {v2}, Lcom/android/phone/nbpcd/NBPCDSetting;->finish()V

    .line 151
    return-void
.end method
