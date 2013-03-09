.class public Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;
.super Ljava/lang/Object;
.source "SimpleHtcListItemSeparable.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# static fields
.field public static final TYPE_COMMUNICATION:Ljava/lang/String; = "communication"

.field public static final TYPE_EDIT:Ljava/lang/String; = "edit"

.field public static final TYPE_INDEX:Ljava/lang/String; = "index"

.field public static final TYPE_INFORMATION:Ljava/lang/String; = "information"

.field public static final TYPE_LABEL:Ljava/lang/String; = "label"

.field public static final TYPE_MY_CONTACT_OPTION:Ljava/lang/String; = "my_contact_option"


# instance fields
.field protected mDrawOnThis:Z

.field protected mSeparateID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->mDrawOnThis:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "id"
    .parameter "drawOnThis"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    .line 48
    iput-boolean p2, p0, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->mDrawOnThis:Z

    .line 49
    return-void
.end method


# virtual methods
.method public final getSeparateID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    return-object v0
.end method

.method public final getShouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->mDrawOnThis:Z

    return v0
.end method

.method public setSeparateID(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setSeparateID(Z)V
    .locals 0
    .parameter "drawOnThis"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->mDrawOnThis:Z

    .line 65
    return-void
.end method

.method public shouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->mDrawOnThis:Z

    return v0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 6
    .parameter "listitem"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v2

    .line 76
    :cond_1
    if-nez p1, :cond_2

    move v2, v3

    .line 77
    goto :goto_0

    .line 80
    :cond_2
    instance-of v4, p1, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    if-nez v4, :cond_3

    move v2, v3

    .line 81
    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 83
    check-cast v1, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    .line 84
    .local v1, nextTag:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->getSeparateID()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, nextID:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    if-nez v4, :cond_4

    if-eqz v0, :cond_0

    .line 88
    :cond_4
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    if-nez v4, :cond_5

    if-nez v0, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    if-eqz v4, :cond_7

    if-nez v0, :cond_7

    :cond_6
    move v2, v3

    .line 90
    goto :goto_0

    .line 93
    :cond_7
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 98
    :cond_8
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    move v2, v3

    .line 100
    goto :goto_0

    .line 103
    :cond_b
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 105
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    const-string v5, "label"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "label"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    :cond_c
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    const-string v5, "index"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "index"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_d
    move v2, v3

    .line 111
    goto :goto_0
.end method
