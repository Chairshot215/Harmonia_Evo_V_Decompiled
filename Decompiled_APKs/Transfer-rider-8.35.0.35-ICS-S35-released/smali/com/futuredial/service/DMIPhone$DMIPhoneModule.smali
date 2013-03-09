.class public Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
.super Ljava/lang/Object;
.source "DMIPhone.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/service/DMIPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DMIPhoneModule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/futuredial/service/DMIPhone$DMIPhoneModule;",
        ">;"
    }
.end annotation


# instance fields
.field public m_bImported:Z

.field public m_bSelected:Z

.field public m_hasDroppedField:Ljava/lang/Boolean;

.field public m_moduleIndex:Ljava/lang/Integer;

.field public m_pim:Lcom/futuredial/pim/CPim;

.field public m_policy:Ljava/lang/String;

.field public m_preResult:I

.field public m_result:I

.field m_service:Landroid/app/Service;

.field public m_writeCount:Ljava/lang/Integer;

.field public strAccountName:Ljava/lang/String;

.field public strAccountType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Service;Ljava/lang/Integer;)V
    .locals 2
    .parameter "s"
    .parameter "idx"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v1, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_preResult:I

    .line 53
    iput v1, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_result:I

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_writeCount:Ljava/lang/Integer;

    .line 56
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_hasDroppedField:Ljava/lang/Boolean;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_pim:Lcom/futuredial/pim/CPim;

    .line 121
    const-string v0, "default"

    iput-object v0, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_policy:Ljava/lang/String;

    .line 124
    const-string v0, "com.htc.android.pcsc"

    iput-object v0, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->strAccountType:Ljava/lang/String;

    .line 125
    const-string v0, "pcsc"

    iput-object v0, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->strAccountName:Ljava/lang/String;

    .line 129
    iput-boolean v1, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_bImported:Z

    .line 136
    iput-boolean v1, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_bSelected:Z

    .line 62
    iput-object p2, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_moduleIndex:Ljava/lang/Integer;

    .line 63
    iput-object p1, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_service:Landroid/app/Service;

    .line 65
    iget-object v0, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_moduleIndex:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_pim:Lcom/futuredial/pim/CPim;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_pim:Lcom/futuredial/pim/CPim;

    invoke-virtual {v0}, Lcom/futuredial/pim/CPim;->getAccountType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->strAccountType:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_pim:Lcom/futuredial/pim/CPim;

    invoke-virtual {v0}, Lcom/futuredial/pim/CPim;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->strAccountName:Ljava/lang/String;

    .line 91
    :cond_0
    return-void

    .line 68
    :pswitch_1
    new-instance v0, Lcom/futuredial/pim/G2Phonebook;

    iget-object v1, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_service:Landroid/app/Service;

    invoke-direct {v0, v1}, Lcom/futuredial/pim/G2Phonebook;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_pim:Lcom/futuredial/pim/CPim;

    goto :goto_0

    .line 71
    :pswitch_2
    new-instance v0, Lcom/futuredial/pim/G2Calendar;

    iget-object v1, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_service:Landroid/app/Service;

    invoke-direct {v0, v1}, Lcom/futuredial/pim/G2Calendar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_pim:Lcom/futuredial/pim/CPim;

    goto :goto_0

    .line 74
    :pswitch_3
    new-instance v0, Lcom/futuredial/pim/G2Sms;

    iget-object v1, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_service:Landroid/app/Service;

    invoke-direct {v0, v1}, Lcom/futuredial/pim/G2Sms;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_pim:Lcom/futuredial/pim/CPim;

    goto :goto_0

    .line 77
    :pswitch_4
    new-instance v0, Lcom/futuredial/pim/G2BookMark;

    iget-object v1, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_service:Landroid/app/Service;

    invoke-direct {v0, v1}, Lcom/futuredial/pim/G2BookMark;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_pim:Lcom/futuredial/pim/CPim;

    goto :goto_0

    .line 80
    :pswitch_5
    new-instance v0, Lcom/futuredial/pim/G2File;

    iget-object v1, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_service:Landroid/app/Service;

    invoke-direct {v0, v1}, Lcom/futuredial/pim/G2File;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_pim:Lcom/futuredial/pim/CPim;

    goto :goto_0

    .line 83
    :pswitch_6
    new-instance v0, Lcom/futuredial/pim/G2Task;

    iget-object v1, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_service:Landroid/app/Service;

    invoke-direct {v0, v1}, Lcom/futuredial/pim/G2Task;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_pim:Lcom/futuredial/pim/CPim;

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public SetPhoneInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "phoneinfo"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_pim:Lcom/futuredial/pim/CPim;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_pim:Lcom/futuredial/pim/CPim;

    invoke-virtual {v0, p1}, Lcom/futuredial/pim/CPim;->SetPhoneInfo(Ljava/lang/String;)V

    .line 159
    :cond_0
    return-void
.end method

.method public compareTo(Lcom/futuredial/service/DMIPhone$DMIPhoneModule;)I
    .locals 2
    .parameter "arg0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_moduleIndex:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_moduleIndex:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    check-cast p1, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->compareTo(Lcom/futuredial/service/DMIPhone$DMIPhoneModule;)I

    move-result v0

    return v0
.end method

.method public get_moduleName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    const-string v0, ""

    .line 96
    .local v0, moduleName:Ljava/lang/String;
    iget-object v1, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_moduleIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 117
    :goto_0
    :pswitch_0
    return-object v0

    .line 99
    :pswitch_1
    iget-object v1, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_service:Landroid/app/Service;

    invoke-virtual {v1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06021d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    goto :goto_0

    .line 102
    :pswitch_2
    iget-object v1, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_service:Landroid/app/Service;

    invoke-virtual {v1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06021c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    goto :goto_0

    .line 105
    :pswitch_3
    iget-object v1, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_service:Landroid/app/Service;

    invoke-virtual {v1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06021f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    goto :goto_0

    .line 108
    :pswitch_4
    iget-object v1, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_service:Landroid/app/Service;

    invoke-virtual {v1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06021b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    goto :goto_0

    .line 111
    :pswitch_5
    iget-object v1, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_service:Landroid/app/Service;

    invoke-virtual {v1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06021e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    goto :goto_0

    .line 114
    :pswitch_6
    iget-object v1, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_service:Landroid/app/Service;

    invoke-virtual {v1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060220

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public get_writenItemUnitRes()I
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_writeCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 148
    sget-object v0, Lcom/futuredial/service/DMIPhone;->MUnit:[I

    iget-object v1, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_moduleIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget v0, v0, v1

    .line 150
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/futuredial/service/DMIPhone;->SUnit:[I

    iget-object v1, p0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_moduleIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->get_moduleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
