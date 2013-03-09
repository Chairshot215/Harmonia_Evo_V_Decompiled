.class Lcom/android/i18n/addressinput/AddressUIComponent;
.super Ljava/lang/Object;
.source "AddressUIComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/addressinput/AddressUIComponent$1;,
        Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;
    }
.end annotation


# instance fields
.field private mCandidatesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/addressinput/RegionData;",
            ">;"
        }
    .end annotation
.end field

.field private mFieldName:Ljava/lang/String;

.field private mId:Lcom/android/i18n/addressinput/AddressField;

.field private mParentId:Lcom/android/i18n/addressinput/AddressField;

.field private mUiType:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/i18n/addressinput/AddressField;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mCandidatesList:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mId:Lcom/android/i18n/addressinput/AddressField;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mParentId:Lcom/android/i18n/addressinput/AddressField;

    .line 61
    sget-object v0, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->EDIT:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mUiType:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    .line 62
    return-void
.end method


# virtual methods
.method getCandidatesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/addressinput/RegionData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mCandidatesList:Ljava/util/List;

    return-object v0
.end method

.method getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mFieldName:Ljava/lang/String;

    return-object v0
.end method

.method getId()Lcom/android/i18n/addressinput/AddressField;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mId:Lcom/android/i18n/addressinput/AddressField;

    return-object v0
.end method

.method getParentId()Lcom/android/i18n/addressinput/AddressField;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mParentId:Lcom/android/i18n/addressinput/AddressField;

    return-object v0
.end method

.method getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mUiType:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    return-object v0
.end method

.method getValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mCandidatesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 103
    :goto_0
    return-object v1

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mCandidatesList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/addressinput/RegionData;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/RegionData;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 93
    :cond_1
    sget-object v1, Lcom/android/i18n/addressinput/AddressUIComponent$1;->$SwitchMap$com$android$i18n$addressinput$AddressUIComponent$UIComponent:[I

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mUiType:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    invoke-virtual {v2}, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 103
    const-string v1, ""

    goto :goto_0

    .line 95
    :pswitch_0
    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mView:Landroid/view/View;

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 96
    .local v0, selectedItem:Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 97
    const-string v1, ""

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 101
    .end local v0           #selectedItem:Ljava/lang/Object;
    :pswitch_1
    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mView:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mView:Landroid/view/View;

    return-object v0
.end method

.method initializeCandidatesList(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/addressinput/RegionData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, candidatesList:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/addressinput/RegionData;>;"
    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mCandidatesList:Ljava/util/List;

    .line 70
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 71
    sget-object v0, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->SPINNER:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mUiType:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    .line 72
    sget-object v0, Lcom/android/i18n/addressinput/AddressUIComponent$1;->$SwitchMap$com$android$i18n$addressinput$AddressField:[I

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mId:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 74
    :pswitch_0
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mParentId:Lcom/android/i18n/addressinput/AddressField;

    goto :goto_0

    .line 77
    :pswitch_1
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mParentId:Lcom/android/i18n/addressinput/AddressField;

    goto :goto_0

    .line 80
    :pswitch_2
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mParentId:Lcom/android/i18n/addressinput/AddressField;

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setFieldName(Ljava/lang/String;)V
    .locals 0
    .parameter "fieldName"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mFieldName:Ljava/lang/String;

    .line 113
    return-void
.end method

.method setView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mView:Landroid/view/View;

    .line 149
    return-void
.end method
