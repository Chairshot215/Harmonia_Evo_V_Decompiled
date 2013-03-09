.class public final Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;
.super Lcom/coremobility/integration/app/CM_Form;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/coremobility/app/vnotes/bm;
.implements Lcom/coremobility/app/vnotes/ed;
.implements Lcom/coremobility/app/vnotes/hq;
.implements Lcom/coremobility/integration/app/k;
.implements Lcom/coremobility/integration/b/e;
.implements Lcom/coremobility/integration/i;
.implements Lcom/coremobility/k/dg;


# instance fields
.field private F:Z

.field private G:Z

.field private H:Ljava/lang/String;

.field private I:Landroid/widget/ImageButton;

.field private J:Landroid/widget/ImageButton;

.field private K:Landroid/widget/Button;

.field private L:Landroid/widget/Button;

.field private M:Lcom/coremobility/app/customui/CM_ImageButton;

.field private N:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

.field private O:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

.field private P:Lcom/coremobility/app/customui/CM_RecipientEditor;

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/SeekBar;

.field private T:Landroid/widget/RelativeLayout;

.field private U:Landroid/os/PowerManager$WakeLock;

.field private V:Lcom/coremobility/integration/d/c;

.field private W:I

.field private X:I

.field private Y:Z

.field private Z:Z

.field private a:I

.field private aa:Z

.field private ab:Landroid/app/AlertDialog;

.field private final ac:Landroid/view/View$OnFocusChangeListener;

.field private final ad:Landroid/text/TextWatcher;

.field private ae:Landroid/os/Handler;

.field private b:I

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/coremobility/integration/app/CM_Form;-><init>()V

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->c:Z

    iput-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->d:Ljava/lang/String;

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->g:I

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->h:I

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->i:I

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->j:I

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->H:Ljava/lang/String;

    iput-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->U:Landroid/os/PowerManager$WakeLock;

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->W:I

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->X:I

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->Y:Z

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->Z:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->aa:Z

    new-instance v0, Lcom/coremobility/app/vnotes/ds;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/ds;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->ac:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/coremobility/app/vnotes/dt;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/dt;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->ad:Landroid/text/TextWatcher;

    new-instance v0, Lcom/coremobility/app/vnotes/du;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/du;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->ae:Landroid/os/Handler;

    return-void
.end method

.method private a()I
    .locals 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->Z:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->d(I)Z

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->g()V

    :cond_0
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->W:I

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremobility/app/vnotes/cf;->W()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/coremobility/integration/d/c;->a(II)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, -0x1

    :goto_1
    return v1

    :cond_1
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->D()Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->n()V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    invoke-virtual {v2, v0}, Lcom/coremobility/integration/d/c;->c(Z)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->d(I)Z

    goto :goto_1
.end method

.method private a(Z)I
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/c;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    :cond_0
    :goto_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->d(I)Z

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/c;->b()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->l()V

    return-void
.end method

.method private b()I
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->Z:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->S:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->n()V

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->g()V

    :cond_0
    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    if-eqz v3, :cond_1

    iput v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->W:I

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    invoke-virtual {v3, v2}, Lcom/coremobility/integration/d/c;->a(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremobility/app/vnotes/cf;->W()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/coremobility/integration/d/c;->a(ZI)V

    :cond_1
    :goto_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->d(I)Z

    return v1

    :cond_2
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->D()Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremobility/app/vnotes/cf;->W()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/coremobility/integration/d/c;->a(II)Z

    goto :goto_1
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->e()V

    return-void
.end method

.method private b(Z)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disablePlayback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->n()V

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->a:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->a:I

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->b:I

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->a:I

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->a(Z)I

    :cond_0
    invoke-direct {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->d(I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->a:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->b:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->d(I)Z

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->b:I

    if-ne v0, v4, :cond_1

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->b()I

    goto :goto_0
.end method

.method static synthetic c(Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;)Lcom/coremobility/app/customui/CM_RecipientEditor;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->P:Lcom/coremobility/app/customui/CM_RecipientEditor;

    return-object v0
.end method

.method private c()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/c;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->d(I)Z

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown in stopPlayer(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private d()V
    .locals 9

    const/4 v8, 0x6

    const/4 v2, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->P:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->P:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->P:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->P:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->c()Ljava/util/Vector;

    move-result-object v5

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->d()Lcom/coremobility/app/vnotes/hp;

    move-result-object v6

    move v1, v2

    :goto_0
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v5, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hr;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hr;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v2}, Lcom/coremobility/app/vnotes/hp;->a(Ljava/lang/String;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Lcom/coremobility/app/vnotes/hp;->a()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "preference_from_name"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "sender_name"

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "recipient_emails"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "recipient_mdns"

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->i:I

    invoke-static {v1, v5, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;ILandroid/content/ContentValues;)Z

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->m()V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->i:I

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/cq;->f(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->showDialog(I)V

    :goto_1
    return-void

    :cond_1
    iput-boolean v7, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->c:Z

    const-string v0, "Sending vnote to mdn: %s email: %s "

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    aput-object v3, v1, v7

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->P:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->c()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v7, :cond_4

    const v0, 0x7f0c012e

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    invoke-static {p0, v7}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v1

    if-ne v1, v7, :cond_6

    const v1, 0x7f0c0124

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->finish()V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v7, :cond_5

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hr;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hr;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hr;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hr;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v0, "Recipients vector holds 0 recipients."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    goto :goto_2

    :cond_6
    if-le v1, v7, :cond_3

    const-string v0, "%d messages"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0c0238

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->showDialog(I)V

    goto/16 :goto_1
.end method

.method private d(I)Z
    .locals 3

    const v1, 0x7f020046

    const/4 v2, 0x1

    iput p1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->a:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v2

    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->U:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->U:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->s()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->I:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->J:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->aa:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->U:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->U:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->s()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->I:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->I:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->J:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->aa:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->h()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->j()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->k()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->e()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->U:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->U:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_2
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->r()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->h()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->j()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->k()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->e()V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->r()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->I:Landroid/widget/ImageButton;

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->I:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->J:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->aa:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->k()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->h()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->U:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->U:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->s()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->I:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->I:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->J:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->aa:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->h()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->j()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->k()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->e()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->P:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->K:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->K:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->a(Z)I

    :cond_0
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->showDialog(I)V

    return-void
.end method

.method private f(I)V
    .locals 2

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->j:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->j:I

    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->setContentView(I)V

    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->J:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->J:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->i(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->Z:Z

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->D()Z

    move-result v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->J:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    const v0, 0x7f020043

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    const v0, 0x7f0b0067

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->I:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->I:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b006a

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->K:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->K:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0018

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->L:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->L:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_ImageButton;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->M:Lcom/coremobility/app/customui/CM_ImageButton;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->M:Lcom/coremobility/app/customui/CM_ImageButton;

    const v1, 0x7f020019

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->M:Lcom/coremobility/app/customui/CM_ImageButton;

    invoke-virtual {v0, p0}, Lcom/coremobility/app/customui/CM_ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0068

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->N:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->N:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    const v1, 0x7f0c0130

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->N:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    const v1, 0x7f0c0131

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->N:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    const v1, 0x7f02007a

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->a(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->N:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    invoke-virtual {v0, p0}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->N:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->F:Z

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->setChecked(Z)V

    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->O:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->O:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    const v1, 0x7f0c0132

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->O:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    const v1, 0x7f0c0133

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->O:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->a(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->O:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    invoke-virtual {v0, p0}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->O:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->G:Z

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->setChecked(Z)V

    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_RecipientEditor;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->P:Lcom/coremobility/app/customui/CM_RecipientEditor;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->P:Lcom/coremobility/app/customui/CM_RecipientEditor;

    new-instance v1, Lcom/coremobility/app/vnotes/dc;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/dc;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_RecipientEditor;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->P:Lcom/coremobility/app/customui/CM_RecipientEditor;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->ad:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_RecipientEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->P:Lcom/coremobility/app/customui/CM_RecipientEditor;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->ac:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_RecipientEditor;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0b0063

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->S:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->S:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f0b0065

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->R:Landroid/widget/TextView;

    const v0, 0x7f0b0064

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->Q:Landroid/widget/TextView;

    const v0, 0x7f0b0062

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->T:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->T:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->T:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    goto/16 :goto_0

    :cond_1
    const v0, 0x7f020044

    goto/16 :goto_1
.end method

.method private g()V
    .locals 12

    const/4 v11, 0x6

    const/4 v10, 0x2

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/c;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    :cond_0
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->Z:Z

    if-eqz v0, :cond_1

    move v6, v9

    :goto_0
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->g:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "smvvm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x6

    const-string v2, "path = %s, filename = %s, audioFormat = %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/integration/d/c;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->d:Ljava/lang/String;

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->e:I

    const/16 v5, 0x64

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremobility/app/vnotes/cf;->W()I

    move-result v7

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremobility/app/vnotes/cf;->a()Lcom/coremobility/integration/b;

    move-result-object v8

    move-object v4, p0

    invoke-direct/range {v0 .. v8}, Lcom/coremobility/integration/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/coremobility/integration/i;IZILcom/coremobility/integration/b;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/integration/d/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->X:I

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->D()Z

    move-result v6

    goto/16 :goto_0

    :cond_2
    new-instance v1, Lcom/coremobility/integration/d/c;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->d:Ljava/lang/String;

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->e:I

    const/16 v5, 0x64

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->W()I

    move-result v7

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->a()Lcom/coremobility/integration/b;

    move-result-object v8

    move-object v4, p0

    invoke-direct/range {v1 .. v8}, Lcom/coremobility/integration/d/c;-><init>(Ljava/lang/String;ILcom/coremobility/integration/i;IZILcom/coremobility/integration/b;)V

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremobility/integration/d/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->X:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in preparePlayer()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v10}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->showDialog(I)V

    goto :goto_1
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->S:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->X:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->R:Landroid/widget/TextView;

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->X:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/coremobility/j/p;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->Q:Landroid/widget/TextView;

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->W:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/coremobility/j/p;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->Q:Landroid/widget/TextView;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/coremobility/j/p;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private k()V
    .locals 2

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->Y:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->S:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->W:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->P:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hr;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hr;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hr;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v3, " <"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_2
    const v0, 0x7f0c0149

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private m()V
    .locals 6

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->F:Z

    if-eqz v2, :cond_0

    const/16 v0, 0x2000

    :cond_0
    iget-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->G:Z

    if-eqz v2, :cond_1

    int-to-long v2, v0

    const-wide/16 v4, 0x100

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_1
    const-string v2, "status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->i:I

    invoke-static {v0, v2, v1}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;ILandroid/content/ContentValues;)Z

    return-void
.end method

.method private n()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    move-object v1, p0

    :goto_0
    iput-boolean v0, v1, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->aa:Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->J:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->aa:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->Z:Z

    if-eqz v0, :cond_1

    move v0, v1

    move-object v1, p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    move-object v1, p0

    goto :goto_0
.end method

.method private o()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->ae:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->ae:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->ae:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnAudioPlayerError - ErrorType ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->c()V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->c()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c003c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c023c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00f2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public final a(II)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnAudioPlayerStatus - StatusType ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Parm0 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput p2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->W:I

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->j()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->k()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->c()V

    iput v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->W:I

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->j()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->k()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->P:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->P:Lcom/coremobility/app/customui/CM_RecipientEditor;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_RecipientEditor;->append(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->P:Lcom/coremobility/app/customui/CM_RecipientEditor;

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_RecipientEditor;->append(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->l()V

    :cond_1
    return-void
.end method

.method public final a(IJJLjava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    invoke-static {}, Lcom/coremobility/integration/d/h;->a()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v3, v2

    :goto_1
    const/4 v4, 0x5

    if-eq v0, v4, :cond_1

    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    :cond_1
    move v0, v2

    :goto_2
    const-wide/16 v4, 0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_5

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->Z:Z

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->aa:Z

    :goto_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->J:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->aa:Z

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->J:Landroid/widget/ImageButton;

    const v2, 0x7f020044

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/cf;->c(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/d/c;->c(Z)V

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->aa:Z

    goto :goto_3

    :cond_5
    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->Z:Z

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->aa:Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->J:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->aa:Z

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/d/c;->c(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7a
        :pswitch_0
    .end packed-switch
.end method

.method public final b(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->b(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->ae:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->removeDialog(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->b(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final c(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->d()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->showDialog(I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->removeDialog(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/coremobility/integration/app/CM_Form;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->c(Landroid/content/Context;Landroid/net/Uri;)Lcom/coremobility/app/vnotes/kf;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/coremobility/app/vnotes/kf;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/coremobility/app/vnotes/kf;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    iget-object v3, v2, Lcom/coremobility/app/vnotes/kf;->c:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v1, v2, Lcom/coremobility/app/vnotes/kf;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_0
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    const v0, 0x7f0c0140

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->i(Landroid/content/Context;I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, v2, Lcom/coremobility/app/vnotes/kf;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v2, Lcom/coremobility/app/vnotes/kf;->a:Ljava/lang/String;

    :goto_2
    invoke-static {v2}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/app/vnotes/kf;)Ljava/util/Vector;

    move-result-object v1

    new-instance v2, Lcom/coremobility/app/vnotes/as;

    invoke-direct {v2, p0, v1}, Lcom/coremobility/app/vnotes/as;-><init>(Landroid/content/Context;Ljava/util/Vector;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00f2

    new-instance v2, Lcom/coremobility/app/vnotes/dy;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/dy;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00f3

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_1

    :cond_4
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->P:Lcom/coremobility/app/customui/CM_RecipientEditor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->P:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v2}, Lcom/coremobility/app/customui/CM_RecipientEditor;->clearFocus()V

    :cond_0
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->I:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_4

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->a:I

    if-ne v0, v4, :cond_2

    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->a(Z)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->b()I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->a()I

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->J:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_7

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/cf;->D()Z

    move-result v2

    if-nez v2, :cond_5

    :goto_1
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->J:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    const v1, 0x7f020043

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/cf;->c(Z)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->a:I

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/d/c;->c(Z)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    const v1, 0x7f020044

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->K:Landroid/widget/Button;

    if-ne p1, v1, :cond_b

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "preference_from_name"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->showDialog(I)V

    goto :goto_0

    :cond_9
    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->a:I

    if-ne v1, v4, :cond_a

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->a(Z)I

    :cond_a
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->d()V

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->L:Landroid/widget/Button;

    if-ne p1, v0, :cond_c

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->f()V

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->M:Lcom/coremobility/app/customui/CM_ImageButton;

    if-ne p1, v0, :cond_d

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/app/Activity;)V

    goto :goto_0

    :cond_d
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->N:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->N:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->F:Z

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->m()V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->O:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->O:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->G:Z

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->m()V

    goto/16 :goto_0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_Form;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->P:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->H:Ljava/lang/String;

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->f(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->P:Lcom/coremobility/app/customui/CM_RecipientEditor;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_RecipientEditor;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->P:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->requestFocus()Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->N:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->F:Z

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->O:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->G:Z

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->setChecked(Z)V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->a:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->d(I)Z

    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-static {p0, p0}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/app/vnotes/hq;Landroid/content/Context;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x186a0
        :pswitch_0
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_Form;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0149

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->setTitle(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->U:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    const-string v2, "mWakeLock created"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const v1, 0x20000006

    const-string v2, "VnotesForwardForm"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->U:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->U:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "urgency"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->F:Z

    const-string v0, "privacy"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->G:Z

    const-string v0, "forward_vnotedir"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->g:I

    const-string v0, "forward_vnoteid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->h:I

    const-string v0, "playback_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->W:I

    const-string v0, "vnoteid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->i:I

    const-string v0, "filename"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->d:Ljava/lang/String;

    const-string v0, "fileType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->f:I

    const-string v0, "audioFormat"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->e:I

    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->j:I

    const-string v0, "recipientEditString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->H:Ljava/lang/String;

    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->a:I

    const-string v0, "state_dis"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->b:I

    :cond_2
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->f(I)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->h:I

    if-gtz v0, :cond_3

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->setResult(I)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->finish()V

    :cond_3
    return-void
.end method

.method protected final onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const v5, 0x7f0c003f

    const v4, 0x7f0c003c

    const v2, 0x1080027

    const/4 v0, 0x0

    const v3, 0x7f0c00f2

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0241

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->ab:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->ab:Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0125

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0126

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/coremobility/app/vnotes/dv;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/dv;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c00f3

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0127

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0128

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0243

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0244

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/dw;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/dw;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0228

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/dx;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/dx;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0229

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Lcom/coremobility/app/vnotes/eb;

    invoke-direct {v0, p0, p0}, Lcom/coremobility/app/vnotes/eb;-><init>(Landroid/content/Context;Lcom/coremobility/app/vnotes/ed;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected final onDestroy()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_Form;->onDestroy()V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->c:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->i:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->i:I

    invoke-static {v0, v1, v4}, Lcom/coremobility/app/vnotes/cq;->e(Landroid/content/Context;II)Z

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->o()V

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->U:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->U:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->U:Landroid/os/PowerManager$WakeLock;

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/c;->c()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown in onDestroy(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/coremobility/integration/app/CM_Form;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->f()V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    invoke-virtual {v2}, Lcom/coremobility/integration/d/c;->a()I

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/cf;->X()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    invoke-virtual {v2}, Lcom/coremobility/integration/d/c;->a()I

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/cf;->Y()V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
    .end sparse-switch
.end method

.method protected final onPause()V
    .locals 3

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_Form;->onPause()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->o()V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/app/vnotes/bm;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;I)V

    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->a(Z)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    iput p2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->W:I

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->j()V

    :cond_0
    return-void
.end method

.method protected final onResume()V
    .locals 12

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_Form;->onResume()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/app/vnotes/bm;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->P:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->requestFocus()Z

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->i:I

    if-nez v0, :cond_9

    new-instance v6, Lcom/coremobility/integration/h/c;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/coremobility/integration/h/c;-><init>(B)V

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_from_name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->j()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->setResult(I)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->finish()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_9

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->P:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v2}, Lcom/coremobility/app/customui/CM_RecipientEditor;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->P:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v3}, Lcom/coremobility/app/customui/CM_RecipientEditor;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    invoke-static/range {v0 .. v6}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coremobility/integration/h/c;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->i:I

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->i:I

    if-nez v0, :cond_2

    const/4 v0, 0x6

    const-string v1, "row could not be generated"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->setResult(I)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->finish()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sender_email"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sender_mdn"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "uri"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sent_timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "guid"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "file_size"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "file_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "filename_only"

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->g:I

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->h:I

    invoke-static {v1, v2, v3, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_3

    const/4 v0, 0x6

    const-string v1, "no vnote entry found to forward"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->setResult(I)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->finish()V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    const/4 v3, 0x2

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x3

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v4, 0x5

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x6

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v11, 0x7

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->f:I

    const/16 v11, 0x8

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->d:Ljava/lang/String;

    iget v11, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->f:I

    invoke-static {v11}, Lcom/coremobility/app/vnotes/cq;->l(I)I

    move-result v11

    iput v11, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->e:I

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    :goto_2
    const-string v1, "previous_sender"

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->g:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    const-string v0, ""

    new-instance v1, Lcom/coremobility/integration/h/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->h:I

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->i:I

    invoke-static {v2, v3, v1}, Lcom/coremobility/app/vnotes/cq;->a(IILcom/coremobility/integration/h/c;)V

    iget v1, v1, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v1, :cond_6

    const/4 v0, 0x6

    const-string v1, "MIME row could not be generated"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->setResult(I)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->finish()V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    move-object v0, v1

    goto :goto_2

    :cond_5
    move-object v0, v3

    :cond_6
    const-string v1, "uri"

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sent_timestamp"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "forward_to_guid"

    invoke-virtual {v7, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->i:I

    invoke-static {v0, v1, v7}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;ILandroid/content/ContentValues;)Z

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->g:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->i:I

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->d:Ljava/lang/String;

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->f:I

    invoke-static/range {v0 .. v5}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;ILjava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x6

    const-string v1, "MIME row could not be generated"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->setResult(I)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->finish()V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x6

    const-string v1, "no vnote entry found to forward"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->setResult(I)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->finish()V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->U()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->b(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->ab:Landroid/app/AlertDialog;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->ab:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->ae:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :cond_a
    const/4 v0, 0x0

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->ae:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->removeDialog(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->g()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->h()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->j()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->k()V

    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->b(Z)V

    goto/16 :goto_1

    :cond_d
    move-object v0, v2

    goto/16 :goto_2
.end method

.method protected final onStart()V
    .locals 5

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/16 v0, 0x64

    invoke-super {p0, v0}, Lcom/coremobility/integration/app/CM_Form;->e(I)V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/dg;)V

    new-instance v0, Lcom/coremobility/integration/h/c;

    invoke-direct {v0, v4}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->g:I

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->h:I

    invoke-static {v1, v2, v0}, Lcom/coremobility/integration/app/j;->a(IILcom/coremobility/integration/h/c;)V

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VnoteSetSafe"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/coremobility/integration/h/c;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget v0, v0, Lcom/coremobility/integration/h/c;->a:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->l()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->e()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->finish()V

    goto :goto_0
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->Y:Z

    return-void
.end method

.method protected final onStop()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_Form;->i()V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/k/dg;)V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/coremobility/integration/h/c;

    invoke-direct {v0, v4}, Lcom/coremobility/integration/h/c;-><init>(B)V

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    invoke-static {v4, v4, v0}, Lcom/coremobility/integration/app/j;->a(IILcom/coremobility/integration/h/c;)V

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VnoteSetSafe"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/coremobility/integration/h/c;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->Y:Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->V:Lcom/coremobility/integration/d/c;

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/d/c;->a(I)Z

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->W:I

    :cond_0
    return-void
.end method
