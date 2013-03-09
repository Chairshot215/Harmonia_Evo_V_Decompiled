.class public final Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;
.super Lcom/coremobility/integration/app/CM_PreferenceForm;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/coremobility/app/vnotes/ed;
.implements Lcom/coremobility/app/vnotes/kc;
.implements Lcom/coremobility/integration/i/e;
.implements Lcom/coremobility/integration/i/g;
.implements Lcom/coremobility/integration/i/h;
.implements Lcom/coremobility/k/dg;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I

.field private volatile e:Landroid/os/Handler;

.field private f:Landroid/preference/PreferenceScreen;

.field private g:Landroid/preference/PreferenceScreen;

.field private h:Landroid/preference/PreferenceScreen;

.field private i:Landroid/preference/PreferenceScreen;

.field private j:Landroid/preference/PreferenceScreen;

.field private k:Landroid/preference/PreferenceScreen;

.field private l:Landroid/preference/CheckBoxPreference;

.field private m:Landroid/app/AlertDialog;

.field private n:Landroid/app/ProgressDialog;

.field private o:Landroid/app/ProgressDialog;

.field private p:Landroid/app/ProgressDialog;

.field private q:Landroid/preference/CheckBoxPreference;

.field private r:Landroid/preference/PreferenceScreen;

.field private s:Landroid/preference/PreferenceScreen;

.field private t:Landroid/preference/PreferenceScreen;

.field private u:Lcom/coremobility/app/customui/CM_PreferenceGroup;

.field private v:Landroid/preference/ListPreference;

.field private w:Landroid/preference/PreferenceScreen;

.field private x:Z

.field private y:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/coremobility/integration/app/CM_PreferenceForm;-><init>()V

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->a:Z

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->b:Z

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->c:Z

    new-instance v0, Lcom/coremobility/app/vnotes/jj;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/jj;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->x:Z

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->k:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->i()Z

    move-result v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->k:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/coremobility/a/b;->c:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSubscriptionStateChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->d:I

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->a()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->f()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e()V

    const/4 v1, 0x1

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->d:I

    sparse-switch v2, :sswitch_data_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->y:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->c()V

    :cond_1
    return-void

    :sswitch_0
    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->g()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->f()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->v:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->v:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const v1, 0x7f0c016a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->v:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const v0, 0x7f0c02a9

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const v0, 0x7f0c02bd

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->w:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const v0, 0x7f0c02be

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->a:Z

    return p1
.end method

.method private b(Z)Ljava/lang/String;
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v2, -0x1

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->b()Ljava/util/Vector;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    move v1, v4

    move v3, v4

    :goto_0
    if-ge v1, v6, :cond_1

    invoke-virtual {v5, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ke;

    iget v0, v0, Lcom/coremobility/app/vnotes/ke;->c:I

    if-ne v0, v7, :cond_5

    add-int/lit8 v0, v3, 0x1

    move v2, v0

    move v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_0
    move v3, v4

    :cond_1
    if-ne v3, v7, :cond_4

    invoke-virtual {v5, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ke;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/ke;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz p1, :cond_3

    const v1, 0x7f0c01d7

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    const v1, 0x7f0c01d6

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const v0, 0x7f0c01d2

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move v0, v2

    move v2, v3

    goto :goto_1
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e()V

    return-void
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->b:Z

    return p1
.end method

.method static synthetic c(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->o:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->d:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->d:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->w:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->w:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->y()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->a(Z)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Landroid/app/ProgressDialog;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->o:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->h:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x7f0c016b

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->h:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    const v1, 0x7f0c016c

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private e()V
    .locals 13

    const-wide/16 v11, 0x1

    const-wide/16 v4, -0x1

    const-wide/16 v9, 0x3e8

    const-wide/16 v7, 0x3c

    const/4 v6, 0x3

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->a()Lcom/coremobility/app/vnotes/kd;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/coremobility/app/vnotes/kd;->f:Lcom/coremobility/app/vnotes/ke;

    if-eqz v1, :cond_5

    iget-wide v0, v0, Lcom/coremobility/app/vnotes/kd;->d:J

    move-wide v2, v0

    :goto_0
    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/coremobility/g/m;->d()J

    move-result-wide v0

    sub-long v0, v2, v0

    cmp-long v4, v0, v7

    if-gtz v4, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    sub-long/2addr v0, v11

    sub-long v0, v2, v0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e:Landroid/os/Handler;

    invoke-static {}, Lcom/coremobility/g/m;->d()J

    move-result-wide v3

    sub-long/2addr v0, v3

    mul-long/2addr v0, v9

    invoke-virtual {v2, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0xe10

    cmp-long v4, v0, v4

    if-gez v4, :cond_4

    div-long/2addr v0, v7

    const-wide/16 v4, 0x2

    cmp-long v4, v0, v4

    if-gez v4, :cond_3

    const-wide/16 v0, 0x2

    :cond_3
    sub-long/2addr v0, v11

    mul-long/2addr v0, v7

    sub-long v0, v2, v0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e:Landroid/os/Handler;

    invoke-static {}, Lcom/coremobility/g/m;->d()J

    move-result-wide v3

    sub-long/2addr v0, v3

    mul-long/2addr v0, v9

    invoke-virtual {v2, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_4
    const-wide/16 v0, 0xdd4

    sub-long v0, v2, v0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e:Landroid/os/Handler;

    invoke-static {}, Lcom/coremobility/g/m;->d()J

    move-result-wide v3

    sub-long/2addr v0, v3

    mul-long/2addr v0, v9

    invoke-virtual {v2, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_5
    move-wide v2, v4

    goto :goto_0
.end method

.method static synthetic e(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->c:Z

    return v0
.end method

.method private f()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->u:Lcom/coremobility/app/customui/CM_PreferenceGroup;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->d:I

    const/4 v3, 0x1

    invoke-static {}, Lcom/coremobility/g/m;->d()J

    move-result-wide v11

    const-wide/16 v5, -0x1

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->a()Lcom/coremobility/app/vnotes/kd;

    move-result-object v13

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v9

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    if-eqz v9, :cond_11

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->h()Z

    move-result v8

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->f()Z

    move-result v7

    move v9, v8

    move v8, v7

    :goto_0
    if-eqz v13, :cond_10

    iget-object v7, v13, Lcom/coremobility/app/vnotes/kd;->f:Lcom/coremobility/app/vnotes/ke;

    if-eqz v7, :cond_10

    iget-object v1, v13, Lcom/coremobility/app/vnotes/kd;->f:Lcom/coremobility/app/vnotes/ke;

    iget-object v1, v1, Lcom/coremobility/app/vnotes/ke;->e:Ljava/lang/String;

    const-string v2, "P1d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iget-wide v5, v13, Lcom/coremobility/app/vnotes/kd;->d:J

    sub-long/2addr v11, v5

    const-wide/16 v14, 0x0

    cmp-long v2, v11, v14

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    move-wide/from16 v16, v5

    move-wide/from16 v6, v16

    move v5, v2

    :goto_3
    packed-switch v10, :pswitch_data_0

    const-string v2, "UNKNOWN STATE"

    const-string v1, ""

    const/4 v3, 0x0

    :cond_0
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->u:Lcom/coremobility/app/customui/CM_PreferenceGroup;

    invoke-virtual {v4, v2}, Lcom/coremobility/app/customui/CM_PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->u:Lcom/coremobility/app/customui/CM_PreferenceGroup;

    invoke-virtual {v2, v1}, Lcom/coremobility/app/customui/CM_PreferenceGroup;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->u:Lcom/coremobility/app/customui/CM_PreferenceGroup;

    invoke-virtual {v1, v3}, Lcom/coremobility/app/customui/CM_PreferenceGroup;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :pswitch_0
    const v1, 0x7f0c01d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0c01da

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    goto :goto_4

    :pswitch_1
    const v1, 0x7f0c01d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0c01db

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    goto :goto_4

    :pswitch_2
    const v1, 0x7f0c01cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_4

    const v1, 0x7f0c019a

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_6

    if-eqz v5, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v4, 0x7f0c01ce

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->g()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_4
    const v1, 0x7f0c0199

    goto :goto_5

    :cond_5
    invoke-static {}, Lcom/coremobility/g/m;->d()J

    move-result-wide v4

    iget-wide v6, v13, Lcom/coremobility/app/vnotes/kd;->d:J

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v7}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v5, 0x7f0c01d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_6
    const v1, 0x7f0c01d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :pswitch_3
    if-eqz v9, :cond_9

    const v1, 0x7f0c01cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0c01d2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_7

    invoke-static {}, Lcom/coremobility/g/m;->d()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-static {v0, v8, v9, v6, v7}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v4, 0x7f0c01ce

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    :goto_7
    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->g()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v5, 0x7f0c01d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_9
    if-eqz v1, :cond_b

    invoke-static {}, Lcom/coremobility/g/m;->d()J

    move-result-wide v1

    iget-wide v4, v13, Lcom/coremobility/app/vnotes/kd;->d:J

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0c01cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->b(Z)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v5, 0x7f0c01cc

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_a
    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->g()Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v2, 0x0

    :goto_8
    move v3, v2

    move-object v2, v4

    goto/16 :goto_4

    :cond_b
    const v1, 0x7f0c01cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0c01d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_4
    const v1, 0x7f0c01cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0c01dc

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    goto/16 :goto_4

    :pswitch_5
    const v1, 0x7f0c01cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0c01dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    goto/16 :goto_4

    :pswitch_6
    const/4 v1, 0x1

    move v4, v1

    :pswitch_7
    if-eqz v8, :cond_d

    const v1, 0x7f0c01d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0c01cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->g()Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v3, 0x0

    :cond_c
    :goto_9
    if-eqz v4, :cond_0

    iget-wide v4, v13, Lcom/coremobility/app/vnotes/kd;->d:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_e

    invoke-static {}, Lcom/coremobility/g/m;->d()J

    move-result-wide v4

    iget-wide v6, v13, Lcom/coremobility/app/vnotes/kd;->d:J

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v7}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v5, 0x7f0c01cd

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_d
    const v1, 0x7f0c01cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->b(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->g()Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v3, 0x0

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->b(Z)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_8
    const v1, 0x7f0c01cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0c0198

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_f
    move v2, v3

    goto/16 :goto_8

    :cond_10
    move-wide/from16 v16, v5

    move-wide/from16 v6, v16

    move v5, v2

    goto/16 :goto_3

    :cond_11
    move v9, v8

    move v8, v7

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic f(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->a:Z

    return v0
.end method

.method private static g()Z
    .locals 1

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->b()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->b()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->b:Z

    return v0
.end method

.method static synthetic h(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->c:Z

    return v0
.end method

.method static synthetic i(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->n:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private i()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    invoke-static {}, Lcom/coremobility/app/vnotes/a;->a()Lcom/coremobility/app/vnotes/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/a;->b()V

    :cond_4
    return-void
.end method

.method static synthetic j(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Landroid/app/ProgressDialog;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->n:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic k(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->p:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic l(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Landroid/app/ProgressDialog;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->p:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/coremobility/integration/i/l;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrade Available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/coremobility/integration/i/l;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ForceUpgrade: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/coremobility/integration/i/l;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    iget-boolean v1, p1, Lcom/coremobility/integration/i/l;->g:Z

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/os/Message;->arg1:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    :cond_1
    iget v1, p1, Lcom/coremobility/integration/i/l;->f:I

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/os/Message;->arg1:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    :cond_2
    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(IJJLjava/lang/Object;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/app/Activity;Lcom/coremobility/app/vnotes/be;)V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->j(Landroid/content/Context;)V

    :pswitch_1
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/kb;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->a(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->showDialog(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->removeDialog(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->d()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c_(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->a(I)V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->c()V

    return-void
.end method

.method public final h(I)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final i(I)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v1, -0x1

    const/4 v3, 0x6

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/coremobility/integration/app/CM_PreferenceForm;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->i(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    if-ne p1, v3, :cond_2

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-string v0, "com.coremobility.app.vnotes.VMSSETUPDONE"

    invoke-static {v0, v2, v2}, Lcom/coremobility/integration/app/j;->a(Ljava/lang/String;II)V

    goto :goto_0

    :cond_2
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_0

    const-string v0, "ACTIVITY_RESULT_FACEBOOK_OAUTH"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bw;->d()Lcom/a/a/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/a/a/e;->a(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_5

    if-eqz p3, :cond_4

    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "oauth_verifier"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/bw;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Exception in onActivityResult "

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_5
    if-nez p2, :cond_0

    const-string v0, "Twitter login activity cancelled "

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x1

    sget-boolean v0, Lcom/coremobility/a/b;->b:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_c

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->x:Z

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_PreferenceForm;->onCreate(Landroid/os/Bundle;)V

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->d:I

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/kb;->a(Lcom/coremobility/app/vnotes/kc;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/kb;->c()I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->d:I

    :cond_1
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->x:Z

    if-nez v0, :cond_d

    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->addPreferencesFromResource(I)V

    const-string v0, "preference_upgrade"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->f:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->f:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->f:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->f:Landroid/preference/PreferenceScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    const-string v0, "preference_change_greeting"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->g:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->g:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->g:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_3
    :goto_1
    const-string v0, "preference_inbox_sort_order"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->v:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->v:Landroid/preference/ListPreference;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->x()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->v:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    const-string v0, "preference_shared_phone_lines"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->i:Landroid/preference/PreferenceScreen;

    const-string v0, "preference_from_name"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->h:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->h:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->h:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->h:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->d()V

    :cond_5
    const-string v0, "preference_speakerphone"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->l:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->l:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->l:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_6
    const-string v0, "preference_show_contact_pictures"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->q:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->q:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->q:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_7
    const-string v0, "preference_help"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->r:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->r:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->r:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_8
    const-string v0, "preference_about"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->j:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->j:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->j:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_9
    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->i:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->i:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_a
    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->c:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->h:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->h:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_b
    return-void

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_d
    const v0, 0x7f050008

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->addPreferencesFromResource(I)V

    const-string v0, "preference_subscription"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_PreferenceGroup;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->u:Lcom/coremobility/app/customui/CM_PreferenceGroup;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->u:Lcom/coremobility/app/customui/CM_PreferenceGroup;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->u:Lcom/coremobility/app/customui/CM_PreferenceGroup;

    invoke-virtual {v0, p0}, Lcom/coremobility/app/customui/CM_PreferenceGroup;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_e
    const-string v0, "preference_change_greeting"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->g:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->g:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->g:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_f
    const-string v0, "preference_greeting_name"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->s:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->s:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->s:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_10
    const-string v0, "preference_greeting_unavailable"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->t:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->t:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->t:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_11
    const-string v0, "preference_autoforward_screen"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->k:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->a()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->f()V

    const-string v0, "preference_data_consent"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->w:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->w:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_13

    sget v0, Lcom/coremobility/a/b;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->d:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->d:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_13

    :cond_12
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->w:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->y()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->w:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->w:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_13
    :goto_2
    const-string v0, "preference_upgrade"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->f:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->f:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->f:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->f:Landroid/preference/PreferenceScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_14
    const-string v0, "preference_social_accounts"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->y:Landroid/preference/PreferenceScreen;

    sget-boolean v0, Lcom/coremobility/a/a;->j:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->g:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->g:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_15
    :goto_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->y:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->y:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_16
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->w:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_17
    const-string v0, "preference_record_greeting"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method protected final onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const v5, 0x7f0c0173

    const v4, 0x7f0c003c

    const v1, 0x1080027

    const v2, 0x7f0c00f2

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lcom/coremobility/app/vnotes/a;->a()Lcom/coremobility/app/vnotes/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v3}, Lcom/coremobility/app/vnotes/a;->a(Landroid/app/Activity;ILcom/coremobility/app/vnotes/be;)Landroid/app/AlertDialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/coremobility/app/vnotes/eb;

    invoke-direct {v0, p0, p0}, Lcom/coremobility/app/vnotes/eb;-><init>(Landroid/content/Context;Lcom/coremobility/app/vnotes/ed;)V

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/eb;->a()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/coremobility/integration/i/f;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f0c0270

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c017b

    new-instance v2, Lcom/coremobility/app/vnotes/jk;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/jk;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00f3

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/coremobility/integration/i/f;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x7f0c026f

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c017b

    new-instance v2, Lcom/coremobility/app/vnotes/jl;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/jl;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->m:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->m:Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0174

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->n:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->n:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v5}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->n:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->n:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->n:Landroid/app/ProgressDialog;

    const v1, 0x7f0c0176

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->n:Landroid/app/ProgressDialog;

    const v1, 0x7f0c00f3

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/coremobility/app/vnotes/jm;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/jm;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->n:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->o:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->o:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->o:Landroid/app/ProgressDialog;

    const v1, 0x7f0c0175

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->o:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/coremobility/app/vnotes/jn;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/jn;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->o:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->p:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->p:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->p:Landroid/app/ProgressDialog;

    const v1, 0x7f0c0177

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->p:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->p:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    :pswitch_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0179

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0178

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c017a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0228

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/jo;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/jo;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0170

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0172

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/jp;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/jp;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00f3

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_PreferenceForm;->onDestroy()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->i()V

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/kb;->b(Lcom/coremobility/app/vnotes/kc;)V

    :cond_0
    return-void
.end method

.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->m:Landroid/app/AlertDialog;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->p:Landroid/app/ProgressDialog;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->n:Landroid/app/ProgressDialog;

    if-ne p1, v1, :cond_3

    :cond_0
    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v1, 0x54

    if-eq p2, v1, :cond_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/coremobility/integration/app/CM_PreferenceForm;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v2

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coremobility/app/vnotes/SM_WebHelpForm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, p0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;ZLandroid/app/Activity;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b00de
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final onPause()V
    .locals 3

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_PreferenceForm;->onPause()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->i()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "preference_from_name"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->d()V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v2, "preference_inbox_sort_order"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coremobility/app/vnotes/cf;->a(I)V

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v2, "preference_data_consent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coremobility/app/vnotes/cf;->a(Z)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->y()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->a(Z)V

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    const/16 v6, 0x6a

    const/16 v5, 0x67

    const/4 v4, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->f:Landroid/preference/PreferenceScreen;

    if-ne p1, v1, :cond_1

    invoke-static {}, Lcom/coremobility/integration/i/f;->a()Lcom/coremobility/integration/i/f;

    move-result-object v1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v0}, Lcom/coremobility/integration/i/f;->a(Lcom/coremobility/integration/i/e;ZZ)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    move v0, v2

    :cond_0
    :goto_1
    return v0

    :pswitch_0
    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->c:Z

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->showDialog(I)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->showDialog(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->j:Landroid/preference/PreferenceScreen;

    if-ne p1, v1, :cond_2

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cq;->l(Landroid/app/Activity;)V

    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->overridePendingTransition(II)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->g:Landroid/preference/PreferenceScreen;

    if-ne p1, v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->showDialog(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->h:Landroid/preference/PreferenceScreen;

    if-ne p1, v1, :cond_4

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->showDialog(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->q:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_5

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->q:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coremobility/app/vnotes/cf;->d(Z)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->l:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_6

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->l:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coremobility/app/vnotes/cf;->c(Z)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->s:Landroid/preference/PreferenceScreen;

    if-ne p1, v1, :cond_7

    const/16 v1, 0xc8

    const/16 v2, 0xc9

    invoke-static {p0, v1, v2}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/app/Activity;II)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->t:Landroid/preference/PreferenceScreen;

    if-ne p1, v1, :cond_8

    const/16 v1, 0xc8

    const/16 v2, 0xca

    invoke-static {p0, v1, v2}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/app/Activity;II)V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->u:Lcom/coremobility/app/customui/CM_PreferenceGroup;

    if-ne p1, v1, :cond_d

    sget-boolean v1, Lcom/coremobility/a/b;->c:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->h()Z

    move-result v1

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->f()Z

    move-result v0

    :goto_2
    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->d:I

    packed-switch v3, :pswitch_data_1

    :cond_9
    :goto_3
    :pswitch_2
    move v0, v2

    goto/16 :goto_1

    :pswitch_3
    if-eqz v0, :cond_a

    invoke-virtual {p0, v5}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->showDialog(I)V

    goto :goto_3

    :cond_a
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->ab()I

    move-result v0

    if-eq v0, v4, :cond_9

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->showDialog(I)V

    goto :goto_3

    :pswitch_4
    if-eqz v0, :cond_b

    invoke-virtual {p0, v5}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->showDialog(I)V

    goto :goto_3

    :cond_b
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->ab()I

    move-result v0

    if-eq v0, v4, :cond_9

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->showDialog(I)V

    goto :goto_3

    :pswitch_5
    if-eqz v1, :cond_c

    const/16 v0, 0x6e

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->showDialog(I)V

    goto :goto_3

    :cond_c
    invoke-virtual {p0, v6}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->showDialog(I)V

    goto :goto_3

    :pswitch_6
    invoke-virtual {p0, v6}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->showDialog(I)V

    goto :goto_3

    :cond_d
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->v:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_e

    move v0, v2

    goto/16 :goto_1

    :cond_e
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->y:Landroid/preference/PreferenceScreen;

    if-ne p1, v1, :cond_11

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->d:I

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->n(I)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->f()Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->showDialog(I)V

    :goto_4
    move v0, v2

    goto/16 :goto_1

    :cond_f
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->showDialog(I)V

    goto :goto_4

    :cond_10
    invoke-static {p0}, Lcom/coremobility/app/vnotes/cq;->n(Landroid/app/Activity;)V

    goto :goto_4

    :cond_11
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->r:Landroid/preference/PreferenceScreen;

    if-ne p1, v1, :cond_12

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/coremobility/app/vnotes/SM_WebHelpForm;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_12
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->w:Landroid/preference/PreferenceScreen;

    if-ne p1, v1, :cond_0

    const/16 v0, 0x87

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->showDialog(I)V

    move v0, v2

    goto/16 :goto_1

    :cond_13
    move v1, v0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method protected final onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0

    invoke-static {}, Lcom/coremobility/app/vnotes/a;->a()Lcom/coremobility/app/vnotes/a;

    invoke-static {p0, p1, p2}, Lcom/coremobility/app/vnotes/a;->a(Landroid/app/Activity;ILandroid/app/Dialog;)V

    return-void
.end method

.method protected final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_PreferenceForm;->onResume()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->a()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->f()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->c()V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->j(Landroid/content/Context;)V

    return-void
.end method

.method protected final onStart()V
    .locals 1

    const/16 v0, 0x6c

    invoke-super {p0, v0}, Lcom/coremobility/integration/app/CM_PreferenceForm;->b(I)V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/dg;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/integration/i/e;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/integration/i/h;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/integration/i/g;)V

    return-void
.end method

.method protected final onStop()V
    .locals 1

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_PreferenceForm;->b()V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/k/dg;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/integration/i/e;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/integration/i/h;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/integration/i/g;)V

    return-void
.end method
