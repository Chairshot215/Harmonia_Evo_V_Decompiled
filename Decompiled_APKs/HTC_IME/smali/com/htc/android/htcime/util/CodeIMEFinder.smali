.class public Lcom/htc/android/htcime/util/CodeIMEFinder;
.super Ljava/lang/Object;
.source "CodeIMEFinder.java"


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "CodeIMEFinder"


# instance fields
.field private mFactory:Landroid/view/LayoutInflater;

.field private mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

.field private mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

.field private mLandSIPRes:[I

.field private mPortSIPRes:[I


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 1
    .parameter "htcIMM"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mFactory:Landroid/view/LayoutInflater;

    .line 46
    iput-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 47
    iput-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 49
    iput-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    .line 50
    iput-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mLandSIPRes:[I

    .line 54
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mFactory:Landroid/view/LayoutInflater;

    .line 56
    iput-object p1, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 57
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 58
    return-void
.end method


# virtual methods
.method public getSIPBySIPId(I)Lcom/htc/android/htcime/Intf/IHTCSIP;
    .locals 7
    .parameter "sipId"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 259
    iget-object v4, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v4, :cond_0

    if-eq v6, p1, :cond_0

    const/16 v4, 0xa

    if-eq v4, p1, :cond_0

    move-object v1, v3

    .line 323
    :goto_0
    return-object v1

    .line 265
    :cond_0
    iget-object v4, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mKBViewNullTokenException:Z

    if-ne v4, v1, :cond_3

    .line 268
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 269
    iget-object v4, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    aput-object v3, v4, v0

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 271
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 272
    iget-object v4, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    aput-object v3, v4, v0

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 274
    :cond_2
    iget-object v4, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput-boolean v2, v4, Lcom/htc/android/htcime/HTCIMMData;->mKBViewNullTokenException:Z

    .line 276
    .end local v0           #i:I
    :cond_3
    iget-object v4, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v4, v5, :cond_5

    .line 285
    iget-object v1, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    aget-object v1, v1, p1

    if-eqz v1, :cond_4

    .line 286
    iget-object v1, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    aget-object v1, v1, p1

    goto :goto_0

    .line 289
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    iget-object v1, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mFactory:Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mLandSIPRes:[I

    aget v4, v4, p1

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/Intf/IHTCSIP;

    aput-object v1, v2, p1

    .line 290
    iget-object v1, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-interface {v1, v2}, Lcom/htc/android/htcime/Intf/IHTCSIP;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 291
    iget-object v1, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    aget-object v1, v1, p1

    goto :goto_0

    .line 297
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget-object v4, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 298
    iget-object v4, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    aput-object v3, v4, v0

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 301
    :cond_6
    packed-switch p1, :pswitch_data_0

    .line 317
    :goto_4
    iget-object v1, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    aget-object v1, v1, p1

    if-eqz v1, :cond_8

    .line 318
    iget-object v1, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    aget-object v1, v1, p1

    goto/16 :goto_0

    .line 304
    :pswitch_0
    iget-object v4, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    if-nez p1, :cond_7

    :goto_5
    aput-object v3, v4, v1

    .line 305
    iget-object v1, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    aput-object v3, v1, v5

    .line 306
    iget-object v1, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    aput-object v3, v1, v6

    goto :goto_4

    :cond_7
    move v1, v2

    .line 304
    goto :goto_5

    .line 309
    :pswitch_1
    iget-object v4, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    aput-object v3, v4, v2

    .line 310
    iget-object v2, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    aput-object v3, v2, v1

    .line 311
    iget-object v1, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v2, 0x5

    aput-object v3, v1, v2

    goto :goto_4

    .line 321
    :cond_8
    iget-object v1, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    iget-object v1, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mFactory:Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    aget v4, v4, p1

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/Intf/IHTCSIP;

    aput-object v1, v2, p1

    .line 322
    iget-object v1, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-interface {v1, v2}, Lcom/htc/android/htcime/Intf/IHTCSIP;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 323
    iget-object v1, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    aget-object v1, v1, p1

    goto/16 :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSIPBySIPIdFlagCheck(I)Lcom/htc/android/htcime/Intf/IHTCSIP;
    .locals 2
    .parameter "sipId"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 253
    :goto_0
    return-object v0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mKBViewNullTokenException:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 244
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 253
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/util/CodeIMEFinder;->getSIPBySIPId(I)Lcom/htc/android/htcime/Intf/IHTCSIP;

    move-result-object v0

    goto :goto_0
.end method

.method public loadAllIME()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mIM:[Lcom/htc/android/htcime/Intf/IHTCIM;

    new-instance v1, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;

    invoke-direct {v1}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;-><init>()V

    aput-object v1, v0, v9

    .line 73
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mIM:[Lcom/htc/android/htcime/Intf/IHTCIM;

    new-instance v1, Lcom/htc/android/htcime/PPIME/PPInputMethod;

    invoke-direct {v1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;-><init>()V

    aput-object v1, v0, v8

    .line 78
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mIM:[Lcom/htc/android/htcime/Intf/IHTCIM;

    const/4 v1, 0x7

    new-instance v2, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;

    invoke-direct {v2}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;-><init>()V

    aput-object v2, v0, v1

    .line 79
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mIM:[Lcom/htc/android/htcime/Intf/IHTCIM;

    new-instance v1, Lcom/htc/android/htcime/XT9IME/CXT9IME;

    invoke-direct {v1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;-><init>()V

    aput-object v1, v0, v6

    .line 81
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mIM:[Lcom/htc/android/htcime/Intf/IHTCIM;

    aget-object v0, v0, v9

    iget-object v1, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-interface {v0, v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 82
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mIM:[Lcom/htc/android/htcime/Intf/IHTCIM;

    aget-object v0, v0, v8

    iget-object v1, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-interface {v0, v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 87
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mIM:[Lcom/htc/android/htcime/Intf/IHTCIM;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-interface {v0, v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 88
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mIM:[Lcom/htc/android/htcime/Intf/IHTCIM;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-interface {v0, v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 90
    const/16 v0, 0x17

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    .line 91
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    const v1, 0x7f030042

    aput v1, v0, v7

    .line 92
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    const v1, 0x7f030041

    aput v1, v0, v9

    .line 93
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    const v1, 0x7f030045

    aput v1, v0, v8

    .line 94
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    const/4 v1, 0x3

    const v2, 0x7f030044

    aput v2, v0, v1

    .line 95
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    const/4 v1, 0x4

    const v2, 0x7f030043

    aput v2, v0, v1

    .line 96
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    const/4 v1, 0x5

    const v2, 0x7f030040

    aput v2, v0, v1

    .line 97
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    const/4 v1, 0x6

    const v2, 0x7f030046

    aput v2, v0, v1

    .line 98
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    const/4 v1, 0x7

    const v2, 0x7f030018

    aput v2, v0, v1

    .line 99
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    const/16 v1, 0x11

    const v2, 0x7f03003c

    aput v2, v0, v1

    .line 101
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    const v1, 0x7f030007

    aput v1, v0, v6

    .line 102
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    const/16 v1, 0x9

    const v2, 0x7f030008

    aput v2, v0, v1

    .line 103
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    const/16 v1, 0xa

    const v2, 0x7f030065

    aput v2, v0, v1

    .line 104
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    const/16 v1, 0xb

    const v2, 0x7f030066

    aput v2, v0, v1

    .line 105
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    const/16 v1, 0xc

    const v2, 0x7f03004a

    aput v2, v0, v1

    .line 106
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    const/16 v1, 0xd

    const v2, 0x7f03004b

    aput v2, v0, v1

    .line 107
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    const/16 v1, 0xe

    const v2, 0x7f030053

    aput v2, v0, v1

    .line 108
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    const/16 v1, 0xf

    const v2, 0x7f030054

    aput v2, v0, v1

    .line 109
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    const/16 v1, 0x12

    const v2, 0x7f03000a

    aput v2, v0, v1

    .line 110
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    const/16 v1, 0x13

    const v2, 0x7f03000a

    aput v2, v0, v1

    .line 111
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    const/16 v1, 0x14

    const v2, 0x7f03000b

    aput v2, v0, v1

    .line 112
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    const/16 v1, 0x15

    const v2, 0x7f03003b

    aput v2, v0, v1

    .line 113
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    const/16 v1, 0x16

    const v2, 0x7f03003a

    aput v2, v0, v1

    .line 116
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v1, 0x17

    new-array v1, v1, [Lcom/htc/android/htcime/Intf/IHTCSIP;

    iput-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    .line 117
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    aput-object v5, v0, v7

    .line 118
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    aput-object v5, v0, v9

    .line 119
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mFactory:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    aget v2, v2, v8

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/Intf/IHTCSIP;

    aput-object v0, v1, v8

    .line 120
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mFactory:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mPortSIPRes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/Intf/IHTCSIP;

    aput-object v0, v1, v2

    .line 121
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v1, 0x4

    aput-object v5, v0, v1

    .line 122
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v1, 0x5

    aput-object v5, v0, v1

    .line 123
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v1, 0x6

    aput-object v5, v0, v1

    .line 124
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v1, 0x7

    aput-object v5, v0, v1

    .line 125
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/16 v1, 0x11

    aput-object v5, v0, v1

    .line 127
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    aput-object v5, v0, v6

    .line 128
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/16 v1, 0x9

    aput-object v5, v0, v1

    .line 129
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/16 v1, 0xa

    aput-object v5, v0, v1

    .line 130
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/16 v1, 0xb

    aput-object v5, v0, v1

    .line 131
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/16 v1, 0xc

    aput-object v5, v0, v1

    .line 132
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/16 v1, 0xd

    aput-object v5, v0, v1

    .line 133
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/16 v1, 0xe

    aput-object v5, v0, v1

    .line 134
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/16 v1, 0xf

    aput-object v5, v0, v1

    .line 135
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/16 v1, 0x12

    aput-object v5, v0, v1

    .line 136
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/16 v1, 0x13

    aput-object v5, v0, v1

    .line 137
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/16 v1, 0x14

    aput-object v5, v0, v1

    .line 142
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    aget-object v0, v0, v8

    iget-object v1, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-interface {v0, v1}, Lcom/htc/android/htcime/Intf/IHTCSIP;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 143
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-interface {v0, v1}, Lcom/htc/android/htcime/Intf/IHTCSIP;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 147
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v1, 0x17

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPPreferredIME:[I

    .line 148
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPPreferredIME:[I

    aput v7, v0, v7

    .line 149
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPPreferredIME:[I

    aput v7, v0, v9

    .line 150
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPPreferredIME:[I

    aput v7, v0, v8

    .line 151
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPPreferredIME:[I

    const/4 v1, 0x3

    aput v7, v0, v1

    .line 152
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPPreferredIME:[I

    const/4 v1, 0x4

    aput v7, v0, v1

    .line 153
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPPreferredIME:[I

    const/4 v1, 0x5

    aput v7, v0, v1

    .line 154
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPPreferredIME:[I

    const/4 v1, 0x6

    aput v9, v0, v1

    .line 155
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPPreferredIME:[I

    const/4 v1, 0x7

    aput v8, v0, v1

    .line 156
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPPreferredIME:[I

    const/16 v1, 0x11

    aput v8, v0, v1

    .line 158
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPPreferredIME:[I

    aput v6, v0, v6

    .line 159
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPPreferredIME:[I

    const/16 v1, 0x9

    aput v6, v0, v1

    .line 160
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPPreferredIME:[I

    const/16 v1, 0xa

    aput v6, v0, v1

    .line 161
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPPreferredIME:[I

    const/16 v1, 0xb

    aput v6, v0, v1

    .line 162
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPPreferredIME:[I

    const/16 v1, 0xc

    aput v6, v0, v1

    .line 163
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPPreferredIME:[I

    const/16 v1, 0xd

    aput v6, v0, v1

    .line 164
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPPreferredIME:[I

    const/16 v1, 0xe

    aput v6, v0, v1

    .line 165
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPPreferredIME:[I

    const/16 v1, 0xf

    aput v6, v0, v1

    .line 166
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPPreferredIME:[I

    const/16 v1, 0x12

    aput v6, v0, v1

    .line 167
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPPreferredIME:[I

    const/16 v1, 0x13

    aput v6, v0, v1

    .line 168
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPPreferredIME:[I

    const/16 v1, 0x14

    aput v6, v0, v1

    .line 169
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPPreferredIME:[I

    const/16 v1, 0x15

    aput v8, v0, v1

    .line 170
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPPreferredIME:[I

    const/16 v1, 0x16

    aput v8, v0, v1

    .line 173
    const/16 v0, 0xb

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mLandSIPRes:[I

    .line 174
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mLandSIPRes:[I

    const v1, 0x7f030036

    aput v1, v0, v7

    .line 175
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mLandSIPRes:[I

    const v1, 0x7f030035

    aput v1, v0, v9

    .line 176
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mLandSIPRes:[I

    const v1, 0x7f030034

    aput v1, v0, v8

    .line 181
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mLandSIPRes:[I

    const/4 v1, 0x3

    const v2, 0x7f030030

    aput v2, v0, v1

    .line 182
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mLandSIPRes:[I

    const/16 v1, 0x9

    const v2, 0x7f03002f

    aput v2, v0, v1

    .line 183
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mLandSIPRes:[I

    const/4 v1, 0x4

    const v2, 0x7f030064

    aput v2, v0, v1

    .line 184
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mLandSIPRes:[I

    const/4 v1, 0x5

    const v2, 0x7f030006

    aput v2, v0, v1

    .line 185
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mLandSIPRes:[I

    const/4 v1, 0x6

    const v2, 0x7f030049

    aput v2, v0, v1

    .line 186
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mLandSIPRes:[I

    const/4 v1, 0x7

    const v2, 0x7f030052

    aput v2, v0, v1

    .line 187
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mLandSIPRes:[I

    const v1, 0x7f030009

    aput v1, v0, v6

    .line 188
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mLandSIPRes:[I

    const/16 v1, 0xa

    const v2, 0x7f03001a

    aput v2, v0, v1

    .line 190
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/htc/android/htcime/Intf/IHTCSIP;

    iput-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    .line 191
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    aput-object v5, v0, v7

    .line 192
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    aput-object v5, v0, v9

    .line 193
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    aput-object v5, v0, v8

    .line 198
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v1, 0x3

    aput-object v5, v0, v1

    .line 199
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/16 v1, 0x9

    aput-object v5, v0, v1

    .line 200
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v1, 0x4

    aput-object v5, v0, v1

    .line 201
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v1, 0x5

    aput-object v5, v0, v1

    .line 202
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v1, 0x6

    aput-object v5, v0, v1

    .line 203
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v1, 0x7

    aput-object v5, v0, v1

    .line 204
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    aput-object v5, v0, v6

    .line 205
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/16 v1, 0xa

    aput-object v5, v0, v1

    .line 211
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v1, 0xb

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIPPreferredIME:[I

    .line 212
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIPPreferredIME:[I

    aput v7, v0, v7

    .line 213
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIPPreferredIME:[I

    aput v7, v0, v9

    .line 214
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIPPreferredIME:[I

    aput v7, v0, v8

    .line 219
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIPPreferredIME:[I

    const/4 v1, 0x3

    aput v8, v0, v1

    .line 220
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIPPreferredIME:[I

    const/16 v1, 0x9

    aput v8, v0, v1

    .line 221
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIPPreferredIME:[I

    const/4 v1, 0x4

    aput v6, v0, v1

    .line 222
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIPPreferredIME:[I

    const/4 v1, 0x5

    aput v6, v0, v1

    .line 223
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIPPreferredIME:[I

    const/4 v1, 0x6

    aput v6, v0, v1

    .line 224
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIPPreferredIME:[I

    const/4 v1, 0x7

    aput v6, v0, v1

    .line 225
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIPPreferredIME:[I

    aput v6, v0, v6

    .line 226
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIPPreferredIME:[I

    const/16 v1, 0xa

    aput v7, v0, v1

    .line 228
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mIM:[Lcom/htc/android/htcime/Intf/IHTCIM;

    aget-object v0, v0, v7

    sput-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    .line 229
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    aget-object v1, v1, v8

    iput-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    .line 231
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    new-array v1, v8, [Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    iput-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mHWKB:[Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    .line 232
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mHWKB:[Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    new-instance v1, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    iget-object v2, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-direct {v1, v2}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v7

    .line 233
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mHWKB:[Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    aput-object v5, v0, v9

    .line 234
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mHWKB:[Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    aget-object v1, v1, v7

    iput-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    .line 235
    return-void
.end method

.method public loadEssential()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/htc/android/htcime/Intf/IHTCIM;

    iput-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mIM:[Lcom/htc/android/htcime/Intf/IHTCIM;

    .line 65
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mIM:[Lcom/htc/android/htcime/Intf/IHTCIM;

    new-instance v1, Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-direct {v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;-><init>()V

    aput-object v1, v0, v2

    .line 66
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mIM:[Lcom/htc/android/htcime/Intf/IHTCIM;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-interface {v0, v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 67
    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mIM:[Lcom/htc/android/htcime/Intf/IHTCIM;

    aget-object v0, v0, v2

    sput-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    .line 68
    return-void
.end method

.method public loadIMMConfig()V
    .locals 6

    .prologue
    const/16 v5, 0x1f

    const/4 v4, 0x0

    .line 331
    new-instance v0, Lcom/htc/android/htcime/util/ConfigData;

    invoke-direct {v0}, Lcom/htc/android/htcime/util/ConfigData;-><init>()V

    .line 332
    .local v0, config:Lcom/htc/android/htcime/util/ConfigData;
    iget-object v2, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/util/ConfigData;->initSettings(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 334
    iget-object v2, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    new-array v3, v5, [I

    iput-object v3, v2, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPByType:[I

    .line 335
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 337
    iget-object v2, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPByType:[I

    sget-object v3, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    aget-byte v3, v3, v1

    aput v3, v2, v1

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    new-array v3, v5, [Z

    iput-object v3, v2, Lcom/htc/android/htcime/HTCIMMData;->mPortWCLVisibleByType:[Z

    .line 340
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_1

    .line 341
    iget-object v2, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mPortWCLVisibleByType:[Z

    sget-object v3, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    aget-boolean v3, v3, v1

    aput-boolean v3, v2, v1

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 343
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    new-array v3, v5, [I

    iput-object v3, v2, Lcom/htc/android/htcime/HTCIMMData;->mLandSIPByType:[I

    .line 344
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_2

    .line 345
    iget-object v2, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mLandSIPByType:[I

    sget-object v3, Lcom/htc/android/htcime/util/ConfigData;->mLSIPByType:[B

    aget-byte v3, v3, v1

    aput v3, v2, v1

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 347
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    new-array v3, v5, [Z

    iput-object v3, v2, Lcom/htc/android/htcime/HTCIMMData;->mLandWCLVisibleByType:[Z

    .line 348
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v5, :cond_3

    .line 349
    iget-object v2, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mLandWCLVisibleByType:[Z

    sget-object v3, Lcom/htc/android/htcime/util/ConfigData;->mLWCLViByType:[Z

    aget-boolean v3, v3, v1

    aput-boolean v3, v2, v1

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 351
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    new-array v3, v5, [I

    iput-object v3, v2, Lcom/htc/android/htcime/HTCIMMData;->mAutoCapitalizeByType:[I

    .line 352
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v5, :cond_4

    .line 353
    iget-object v2, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mAutoCapitalizeByType:[I

    sget-object v3, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    aget-byte v3, v3, v1

    aput v3, v2, v1

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 357
    :cond_4
    iget-object v2, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, v2, Lcom/htc/android/htcime/HTCIMMData;->mCursorPos:Landroid/graphics/Rect;

    .line 358
    iget-object v2, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, v2, Lcom/htc/android/htcime/HTCIMMData;->mComposingPos:Landroid/graphics/Rect;

    .line 359
    iget-object v2, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, v2, Lcom/htc/android/htcime/HTCIMMData;->mExtractCursorPos:Landroid/graphics/Rect;

    .line 360
    iget-object v2, p0, Lcom/htc/android/htcime/util/CodeIMEFinder;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, v2, Lcom/htc/android/htcime/HTCIMMData;->mExtractComposingPos:Landroid/graphics/Rect;

    .line 362
    return-void
.end method
