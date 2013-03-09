.class Lcom/android/phone/nbpcd/NBPCDSetting$3;
.super Ljava/lang/Object;
.source "NBPCDSetting.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 205
    iput-object p1, p0, Lcom/android/phone/nbpcd/NBPCDSetting$3;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 208
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 209
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 210
    .local v2, obj:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 211
    const v3, 0x7f0800d6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 212
    .local v1, item:Landroid/widget/CheckedTextView;
    if-ne p3, v0, :cond_1

    .line 213
    if-eqz v1, :cond_0

    .line 214
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 215
    invoke-static {p3}, Lcom/android/phone/nbpcd/NBPCDSetting;->access$002(I)I

    .line 208
    .end local v1           #item:Landroid/widget/CheckedTextView;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    .restart local v1       #item:Landroid/widget/CheckedTextView;
    :cond_1
    if-eqz v1, :cond_0

    .line 219
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    .line 224
    .end local v1           #item:Landroid/widget/CheckedTextView;
    .end local v2           #obj:Landroid/view/View;
    :cond_2
    return-void
.end method
