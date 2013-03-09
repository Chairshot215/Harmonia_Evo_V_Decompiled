.class public Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;
.super Lcom/coremobility/integration/app/CM_Form;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/coremobility/app/vnotes/bm;
.implements Lcom/coremobility/app/vnotes/ed;
.implements Lcom/coremobility/app/vnotes/hq;
.implements Lcom/coremobility/integration/i;
.implements Lcom/coremobility/integration/j;
.implements Lcom/coremobility/k/dg;


# instance fields
.field private A:Landroid/widget/Button;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/ImageButton;

.field private D:Landroid/widget/Button;

.field private E:Landroid/widget/Button;

.field private F:Lcom/coremobility/app/customui/CM_ImageButton;

.field private G:Landroid/widget/Button;

.field private H:Landroid/widget/ImageButton;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private K:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

.field private L:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

.field private M:Lcom/coremobility/app/customui/CM_RecipientEditor;

.field private N:Landroid/widget/ProgressBar;

.field private O:Landroid/widget/ProgressBar;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/widget/Button;

.field private R:Lcom/coremobility/app/customui/CM_Button;

.field private S:Landroid/widget/Button;

.field private final T:Landroid/view/View$OnFocusChangeListener;

.field private final U:Landroid/text/TextWatcher;

.field private V:Lcom/coremobility/integration/d/f;

.field private W:I

.field private X:Lcom/coremobility/integration/d/c;

.field private Y:I

.field private Z:Z

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/os/PowerManager$WakeLock;

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I

.field private q:Landroid/media/ToneGenerator;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Landroid/app/AlertDialog;

.field private w:Landroid/app/AlertDialog;

.field private x:I

.field private y:Landroid/os/Handler;

.field private z:Lcom/coremobility/app/customui/CM_Button;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/coremobility/integration/app/CM_Form;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d:Landroid/os/PowerManager$WakeLock;

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->i:I

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->n:Z

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->p:I

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->s:Z

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->t:Z

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    new-instance v0, Lcom/coremobility/app/vnotes/hu;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/hu;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->y:Landroid/os/Handler;

    new-instance v0, Lcom/coremobility/app/vnotes/hv;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/hv;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->T:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/coremobility/app/vnotes/hw;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/hw;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->U:Landroid/text/TextWatcher;

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Y:I

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Z:Z

    return-void
.end method

.method private static a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)V
    .locals 14

    const/16 v13, 0x12

    const/4 v12, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-instance v0, Lcom/coremobility/k/an;

    invoke-direct {v0}, Lcom/coremobility/k/an;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iput-boolean v9, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->k:Z

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    if-lez v0, :cond_0

    move v0, v8

    :goto_0
    if-eqz v0, :cond_1

    move v7, v8

    :goto_1
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->s()V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g:I

    if-nez v0, :cond_3

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->j()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->showDialog(I)V

    invoke-direct {p0, v9}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g(I)Z

    new-instance v0, Lcom/coremobility/k/bs;

    invoke-direct {v0, v9}, Lcom/coremobility/k/bs;-><init>(Z)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    :goto_2
    return-void

    :cond_0
    move v0, v9

    goto :goto_0

    :cond_1
    move v7, v9

    goto :goto_1

    :cond_2
    new-instance v6, Lcom/coremobility/integration/h/c;

    invoke-direct {v6, v9}, Lcom/coremobility/integration/h/c;-><init>(B)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_from_name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->a()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    :goto_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->b()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    :goto_4
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->i:I

    if-eqz v0, :cond_7

    const-string v2, ""

    const-string v3, ""

    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coremobility/integration/h/c;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g:I

    :cond_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->h:Ljava/lang/String;

    if-nez v0, :cond_4

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g:I

    if-lez v0, :cond_8

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g:I

    invoke-static {v0, v13}, Lcom/coremobility/app/vnotes/cq;->e(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->h:Ljava/lang/String;

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g:I

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->h:Ljava/lang/String;

    move-object v0, p0

    move v3, v13

    move v4, v9

    move v5, v9

    invoke-static/range {v0 .. v5}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;ILjava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f0c013d

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_4
    :goto_5
    invoke-static {v9}, Lcom/coremobility/app/vnotes/cf;->e(Z)V

    invoke-direct {p0, v8}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g(I)Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->V:Lcom/coremobility/integration/d/f;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->h:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, "No filename yet "

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v12, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/k/bs;

    invoke-direct {v0, v9}, Lcom/coremobility/k/bs;-><init>(Z)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto/16 :goto_2

    :cond_5
    const-string v0, ""

    move-object v10, v0

    goto :goto_3

    :cond_6
    const-string v0, ""

    move-object v11, v0

    goto :goto_4

    :cond_7
    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    move-object v2, v11

    move-object v3, v10

    invoke-static/range {v0 .. v6}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coremobility/integration/h/c;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g:I

    iget v0, v6, Lcom/coremobility/integration/h/c;->a:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->showDialog(I)V

    invoke-direct {p0, v9}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g(I)Z

    new-instance v0, Lcom/coremobility/k/bs;

    invoke-direct {v0, v9}, Lcom/coremobility/k/bs;-><init>(Z)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto/16 :goto_2

    :cond_8
    const-string v0, "filename could not be generated"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v12, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_9
    new-instance v0, Lcom/coremobility/integration/d/f;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->h:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/coremobility/integration/d/f;-><init>(Ljava/lang/String;Lcom/coremobility/integration/j;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->V:Lcom/coremobility/integration/d/f;

    :cond_a
    if-eqz v7, :cond_b

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->V:Lcom/coremobility/integration/d/f;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/f;->c()V

    :goto_6
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g(I)Z

    new-instance v0, Lcom/coremobility/k/bs;

    invoke-direct {v0, v8}, Lcom/coremobility/k/bs;-><init>(Z)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->V:Lcom/coremobility/integration/d/f;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/f;->a()V

    goto :goto_6
.end method

.method private a(Z)Z
    .locals 4

    const/16 v3, 0x9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    if-lez v2, :cond_0

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    if-ne v0, v3, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/coremobility/k/ag;

    invoke-direct {v0}, Lcom/coremobility/k/ag;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/c;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    :cond_3
    :goto_2
    invoke-direct {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g(I)Z

    new-instance v0, Lcom/coremobility/k/bl;

    invoke-direct {v0, v1}, Lcom/coremobility/k/bl;-><init>(Z)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/c;->b()V

    goto :goto_2
.end method

.method private b()V
    .locals 3

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v1}, Lcom/coremobility/app/customui/CM_RecipientEditor;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private b(Z)V
    .locals 5

    const/4 v4, 0x5

    const/16 v3, 0xa

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableRecordAndPlayback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g()V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->f:I

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    if-ne v0, v4, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->a(Z)Z

    :cond_1
    invoke-direct {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g(I)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->s()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->f:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g(I)Z

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->f:I

    if-ne v0, v4, :cond_2

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->m()Z

    goto :goto_1
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)Z
    .locals 1

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->l()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->v:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private c()V
    .locals 3

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->J:Landroid/widget/TextView;

    const-wide/32 v1, 0x1d6b4

    invoke-static {v1, v2}, Lcom/coremobility/j/p;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->J:Landroid/widget/TextView;

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/coremobility/j/p;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->I:Landroid/widget/TextView;

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/coremobility/j/p;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->I:Landroid/widget/TextView;

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Y:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/coremobility/j/p;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->q()V

    return-void
.end method

.method private e()V
    .locals 3

    const v0, 0x1d6b4

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    if-le v2, v0, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->N:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->O:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :pswitch_3
    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    if-le v2, v0, :cond_2

    :goto_2
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->N:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :pswitch_4
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Z:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Y:I

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Y:I

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    if-le v1, v2, :cond_1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    :cond_1
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->O:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic e(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->o()V

    return-void
.end method

.method static synthetic f(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)Lcom/coremobility/app/customui/CM_RecipientEditor;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

    return-object v0
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/c;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g(I)Z

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPlayer.Stop() Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private f(I)V
    .locals 6

    const v5, 0x7f020022

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->p:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->p:I

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    if-eqz v0, :cond_1

    const v0, 0x7f030047

    :goto_1
    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->setContentView(I)V

    const v0, 0x7f0b00bf

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v5}, Lcom/coremobility/app/customui/CM_Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, p0}, Lcom/coremobility/app/customui/CM_Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00c0

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00be

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->C:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->C:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0018

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->G:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->G:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->i(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->s:Z

    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->H:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->H:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->D()Z

    move-result v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->H:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    const v0, 0x7f020043

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    const v0, 0x7f0b00bb

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->N:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->N:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0b00bc

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->O:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->O:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0b0064

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->I:Landroid/widget/TextView;

    const v0, 0x7f0b0065

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->J:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0b006a

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->E:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->E:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00c1

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->B:Landroid/widget/TextView;

    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_ImageButton;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->F:Lcom/coremobility/app/customui/CM_ImageButton;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->F:Lcom/coremobility/app/customui/CM_ImageButton;

    const v1, 0x7f020019

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->F:Lcom/coremobility/app/customui/CM_ImageButton;

    invoke-virtual {v0, p0}, Lcom/coremobility/app/customui/CM_ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_RecipientEditor;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

    new-instance v1, Lcom/coremobility/app/vnotes/dc;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/dc;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_RecipientEditor;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->a:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->U:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_RecipientEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->T:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_RecipientEditor;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->L:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->L:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    const v1, 0x7f0c0132

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->L:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    const v1, 0x7f0c0133

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->L:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->a(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->L:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    invoke-virtual {v0, p0}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0068

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->K:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->K:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    const v1, 0x7f0c0130

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->K:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    const v1, 0x7f0c0131

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->K:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    const v1, 0x7f02007a

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->a(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->K:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    invoke-virtual {v0, p0}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_1
    const v0, 0x7f030048

    goto/16 :goto_1

    :cond_2
    const v0, 0x7f020044

    goto/16 :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3

    :cond_4
    const v0, 0x7f0b00c8

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->D:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->D:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00c2

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->P:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->P:Landroid/widget/TextView;

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->x:I

    const/16 v2, 0xc9

    if-ne v0, v2, :cond_5

    const v0, 0x7f0c01c3

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b00c5

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Q:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Q:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00c6

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->R:Lcom/coremobility/app/customui/CM_Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->R:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v5}, Lcom/coremobility/app/customui/CM_Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->R:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, p0}, Lcom/coremobility/app/customui/CM_Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00c7

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->S:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->S:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_5
    const v0, 0x7f0c01c7

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private g()V
    .locals 3

    const/4 v2, 0x6

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->e(Z)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g(I)Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->V:Lcom/coremobility/integration/d/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->V:Lcom/coremobility/integration/d/f;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/f;->b()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->V:Lcom/coremobility/integration/d/f;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/f;->f()I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->c()V

    :cond_2
    invoke-direct {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g(I)Z

    goto :goto_0
.end method

.method private g(I)Z
    .locals 7

    const v6, 0x1d6b4

    const/4 v5, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    const-string v0, "mWakeLock.release()"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->s()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->C:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->H:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v2}, Lcom/coremobility/app/customui/CM_Button;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->o()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->p()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Q:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->R:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->S:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v2}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->C:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->H:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v2}, Lcom/coremobility/app/customui/CM_Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->c()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e()V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->E:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Q:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->R:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->S:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_4

    const-string v0, "mWakeLock.release()"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_4
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->s()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v2}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->C:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->H:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->O:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->c()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e()V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->o()V

    :goto_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->O:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->N:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->p()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Q:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->R:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->S:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->C:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->H:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    const v3, 0x7f0c011f

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v2}, Lcom/coremobility/app/customui/CM_Button;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->c()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e()V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->o()V

    :goto_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->O:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->N:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->q:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->q:Landroid/media/ToneGenerator;

    const/16 v2, 0x1b

    invoke-virtual {v0, v2}, Landroid/media/ToneGenerator;->startTone(I)Z

    const/16 v0, 0x190

    invoke-static {v1, v0}, Ljava/lang/StrictMath;->max(II)I

    :cond_6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->y:Landroid/os/Handler;

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->p()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Q:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->R:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->S:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_8

    const-string v0, "mWakeLock.acquire()"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_8
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->r()V

    iput v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Y:I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->N:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->C:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->H:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v2}, Lcom/coremobility/app/customui/CM_Button;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    const/16 v3, 0x3e8

    if-le v0, v3, :cond_b

    move v0, v1

    :goto_4
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_9
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    const v3, 0x7f0c011f

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->N:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->O:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->N:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->c()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Q:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->R:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->S:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    :cond_b
    move v0, v2

    goto :goto_4

    :pswitch_5
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->C:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->H:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v2}, Lcom/coremobility/app/customui/CM_Button;->setEnabled(Z)V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    const/16 v3, 0x3e8

    if-le v0, v3, :cond_e

    move v0, v1

    :goto_6
    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_c
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    const v3, 0x7f0c011f

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->N:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->O:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->N:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->c()V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Q:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->R:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->S:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5

    :cond_e
    move v0, v2

    goto :goto_6

    :pswitch_6
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_f

    const-string v0, "mWakeLock.release()"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_f
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->C:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->H:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v2}, Lcom/coremobility/app/customui/CM_Button;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->c()V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Q:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->R:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v2}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->S:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_7

    :pswitch_7
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_11

    const-string v0, "mWakeLock.release()"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_11
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->s()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->C:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->H:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v2}, Lcom/coremobility/app/customui/CM_Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->N:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->c()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e()V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->o()V

    :goto_8
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->O:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->N:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    :cond_12
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->p()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Q:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->R:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v2}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->S:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_8

    :pswitch_8
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->r()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->C:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->C:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->C:Landroid/widget/ImageButton;

    const v3, 0x7f020045

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->H:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->H:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->t:Z

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v2}, Lcom/coremobility/app/customui/CM_Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_9
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->O:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->c()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_13

    const-string v0, "mWakeLock.acquire()"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_13
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->O:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->N:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Q:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->R:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->S:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_9

    :pswitch_9
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->r()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v2}, Lcom/coremobility/app/customui/CM_Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->C:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->C:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->C:Landroid/widget/ImageButton;

    const v3, 0x7f020045

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->H:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->H:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->t:Z

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_a
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->O:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->c()V

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Q:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->R:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->S:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_a

    :pswitch_a
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->s()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->C:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->C:Landroid/widget/ImageButton;

    const v3, 0x7f020046

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->H:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->H:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->t:Z

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v2}, Lcom/coremobility/app/customui/CM_Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_b
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->O:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->c()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_16

    const-string v0, "mWakeLock.release()"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_16
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->O:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->N:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Q:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->R:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->S:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_b

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_1
        :pswitch_3
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method

.method private h()V
    .locals 1

    new-instance v0, Lcom/coremobility/k/ap;

    invoke-direct {v0}, Lcom/coremobility/k/ap;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->e(Z)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g(I)Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->V:Lcom/coremobility/integration/d/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->V:Lcom/coremobility/integration/d/f;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/f;->d()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->V:Lcom/coremobility/integration/d/f;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/f;->f()I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    :cond_0
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g(I)Z

    new-instance v0, Lcom/coremobility/k/bu;

    invoke-direct {v0}, Lcom/coremobility/k/bu;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    return-void
.end method

.method private j()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cf;->e(Z)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g(I)Z

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->r:Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->V:Lcom/coremobility/integration/d/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->V:Lcom/coremobility/integration/d/f;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/f;->d()V

    :cond_0
    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->r:Z

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->c()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->f()V

    return-void
.end method

.method private k()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->s:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    if-lez v3, :cond_1

    move v3, v2

    :goto_1
    if-nez v3, :cond_2

    :goto_2
    return v1

    :cond_0
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->D()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/coremobility/k/aj;

    invoke-direct {v1}, Lcom/coremobility/k/aj;-><init>()V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u()V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->v()V

    :cond_3
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g(I)Z

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Y:I

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremobility/app/vnotes/cf;->W()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/coremobility/integration/d/c;->a(II)Z

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/d/c;->c(Z)V

    :cond_4
    new-instance v0, Lcom/coremobility/k/bo;

    invoke-direct {v0, v2}, Lcom/coremobility/k/bo;-><init>(Z)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    move v1, v2

    goto :goto_2
.end method

.method private l()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    if-lez v2, :cond_0

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/coremobility/k/al;

    invoke-direct {v2}, Lcom/coremobility/k/al;-><init>()V

    invoke-static {v2}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    invoke-virtual {v2}, Lcom/coremobility/integration/d/c;->c()V

    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Y:I

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g(I)Z

    new-instance v0, Lcom/coremobility/k/bq;

    invoke-direct {v0, v1}, Lcom/coremobility/k/bq;-><init>(Z)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    move v0, v1

    goto :goto_1
.end method

.method private m()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    if-lez v2, :cond_0

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/coremobility/k/ah;

    invoke-direct {v2}, Lcom/coremobility/k/ah;-><init>()V

    invoke-static {v2}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u()V

    iget-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->s:Z

    if-eqz v2, :cond_4

    :goto_2
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->v()V

    :cond_2
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->O:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    iput v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Y:I

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    invoke-virtual {v3, v2}, Lcom/coremobility/integration/d/c;->a(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremobility/app/vnotes/cf;->W()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/coremobility/integration/d/c;->a(ZI)V

    :cond_3
    :goto_3
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g(I)Z

    new-instance v0, Lcom/coremobility/k/bm;

    invoke-direct {v0, v1}, Lcom/coremobility/k/bm;-><init>(Z)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    move v0, v1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->D()Z

    move-result v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremobility/app/vnotes/cf;->W()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/coremobility/integration/d/c;->a(II)Z

    goto :goto_3
.end method

.method private n()V
    .locals 10

    const/16 v9, 0xd

    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

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

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getApplicationContext()Landroid/content/Context;

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

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->t()Z

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g:I

    invoke-static {p0, v1, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;ILandroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v9}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->showDialog(I)V

    const-string v0, "vnote update failed"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/coremobility/integration/file/b;->c(Ljava/lang/String;)J

    move-result-wide v5

    long-to-int v1, v5

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    const-string v5, "duration"

    iget v6, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "file_size"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g:I

    iget-object v5, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->h:Ljava/lang/String;

    invoke-static {p0, v1, v5, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v9}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->showDialog(I)V

    const-string v0, "MIME update failed"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g:I

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->f(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->showDialog(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->h()V

    iput-boolean v7, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->n:Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->c()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v7, :cond_6

    const v0, 0x7f0c012e

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    invoke-static {p0, v7}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v1

    if-ne v1, v7, :cond_8

    const v1, 0x7f0c0124

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->finish()V

    const-string v0, "Sending vnote to mdn: %s email: %s "

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    aput-object v3, v1, v7

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v7, :cond_7

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hr;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hr;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hr;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hr;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    const-string v0, "Recipients vector holds 0 recipients."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    goto :goto_2

    :cond_8
    if-le v1, v7, :cond_5

    const-string v0, "%d messages"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0c0238

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->showDialog(I)V

    goto/16 :goto_1
.end method

.method private o()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->E:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->B:Landroid/widget/TextView;

    const v3, 0x7f0c023d

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    const/16 v3, 0x3e8

    if-le v0, v3, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->E:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->B:Landroid/widget/TextView;

    const v1, 0x7f0c013a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    return-void

    :cond_1
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->B:Landroid/widget/TextView;

    const v3, 0x7f0c013c

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->E:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->B:Landroid/widget/TextView;

    const v1, 0x7f0c013b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method private p()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->k:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    const/16 v3, 0x3e8

    if-le v0, v3, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->D:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->D:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method private q()V
    .locals 4

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

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

    if-lez v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const v0, 0x7f0c011b

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private r()V
    .locals 3

    const/4 v1, 0x1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_5

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->showDialog(I)V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    :cond_0
    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->a(Z)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_4
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->finish()V

    goto :goto_1
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->y:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->q:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->q:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    :cond_0
    return-void
.end method

.method private t()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    if-lez v2, :cond_0

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->l:Z

    if-eqz v2, :cond_2

    const/16 v0, 0x2000

    :cond_2
    iget-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->m:Z

    if-eqz v2, :cond_3

    int-to-long v2, v0

    const-wide/16 v4, 0x100

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_3
    const-string v2, "status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g:I

    invoke-static {p0, v0, v1}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;ILandroid/content/ContentValues;)Z

    move-result v0

    goto :goto_1
.end method

.method private u()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    move-object v1, p0

    :goto_0
    iput-boolean v0, v1, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->t:Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->H:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->t:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->s:Z

    if-eqz v0, :cond_1

    move v0, v1

    move-object v1, p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    move-object v1, p0

    goto :goto_0
.end method

.method private v()V
    .locals 8

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->D()Z

    move-result v5

    new-instance v0, Lcom/coremobility/integration/d/c;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->h:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v4, 0x12c

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremobility/app/vnotes/cf;->W()I

    move-result v6

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremobility/app/vnotes/cf;->a()Lcom/coremobility/integration/b;

    move-result-object v7

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/coremobility/integration/d/c;-><init>(Ljava/lang/String;ILcom/coremobility/integration/i;IZILcom/coremobility/integration/b;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    return-void
.end method

.method private w()V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->y:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->y:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->y:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->y:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->y:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->y:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->y:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->y:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->y:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->o:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->o:Z

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g(I)Z

    goto :goto_0
.end method

.method public final a(I)V
    .locals 5

    const/4 v4, 0x0

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

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->l()Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c003c

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c023b

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00f2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final a(II)V
    .locals 4

    const/4 v1, 0x5

    new-instance v0, Lcom/coremobility/k/ak;

    invoke-direct {v0, p1, p2}, Lcom/coremobility/k/ak;-><init>(II)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    new-instance v0, Lcom/coremobility/k/bp;

    invoke-direct {v0}, Lcom/coremobility/k/bp;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    return-void

    :pswitch_0
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g(I)Z

    :cond_0
    iput p2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Y:I

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->O:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->O:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Y:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->y:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

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

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_RecipientEditor;->append(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_RecipientEditor;->append(Ljava/lang/CharSequence;)V

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

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->s:Z

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->t:Z

    :goto_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->H:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->t:Z

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->H:Landroid/widget/ImageButton;

    const v2, 0x7f020044

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/cf;->c(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/d/c;->c(Z)V

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->t:Z

    goto :goto_3

    :cond_5
    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->s:Z

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->t:Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->H:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->t:Z

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/d/c;->c(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7a
        :pswitch_0
    .end packed-switch
.end method

.method public final b(I)V
    .locals 4

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
    invoke-direct {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->b(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->y:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->removeDialog(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->b(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final b(II)V
    .locals 5

    const/16 v4, 0x3e8

    const/4 v2, 0x0

    const/16 v3, 0x1b

    const/4 v1, 0x1

    new-instance v0, Lcom/coremobility/k/ao;

    invoke-direct {v0, p1, p2}, Lcom/coremobility/k/ao;-><init>(II)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    new-instance v0, Lcom/coremobility/k/bt;

    invoke-direct {v0}, Lcom/coremobility/k/bt;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->q:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->q:Landroid/media/ToneGenerator;

    invoke-virtual {v0, v3}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_0

    :pswitch_2
    iput p2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->N:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d()V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    if-le v0, v4, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->E:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->E:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->o()V

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    if-le v0, v4, :cond_3

    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->D:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->D:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->p()V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    :pswitch_3
    if-ne p2, v1, :cond_6

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->h()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->q:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->q:Landroid/media/ToneGenerator;

    invoke-virtual {v0, v3}, Landroid/media/ToneGenerator;->startTone(I)Z

    :cond_5
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->showDialog(I)V

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g(I)Z

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->q:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->q:Landroid/media/ToneGenerator;

    invoke-virtual {v0, v3}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
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
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->n()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->showDialog(I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->removeDialog(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final d(I)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnAudioRecorderError - ErrorType ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    packed-switch p1, :pswitch_data_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c003c

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c023a

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00f2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->h()V

    :goto_0
    return-void

    :pswitch_0
    iput-boolean v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->k:Z

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->showDialog(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->h()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
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

    new-instance v2, Lcom/coremobility/app/vnotes/hz;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/hz;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)V

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

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v4, 0x5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v2}, Lcom/coremobility/app/customui/CM_RecipientEditor;->clearFocus()V

    :cond_0
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->z:Lcom/coremobility/app/customui/CM_Button;

    if-ne p1, v2, :cond_5

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->b()V

    :cond_1
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    if-nez v0, :cond_4

    :cond_2
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->f()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    if-ne v0, v4, :cond_3

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->l()Z

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->f()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->R:Lcom/coremobility/app/customui/CM_Button;

    if-ne p1, v2, :cond_6

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->j()V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Q:Landroid/widget/Button;

    if-ne p1, v2, :cond_7

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->k()Z

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->A:Landroid/widget/Button;

    if-eq p1, v2, :cond_8

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->S:Landroid/widget/Button;

    if-ne p1, v2, :cond_a

    :cond_8
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->b()V

    :cond_9
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    if-ne v0, v5, :cond_3

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g()V

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->H:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_d

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/cf;->D()Z

    move-result v2

    if-nez v2, :cond_b

    :goto_1
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->H:Landroid/widget/ImageButton;

    if-eqz v0, :cond_c

    const v1, 0x7f020043

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/cf;->c(Z)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/d/c;->c(Z)V

    goto :goto_0

    :cond_b
    move v0, v1

    goto :goto_1

    :cond_c
    const v1, 0x7f020044

    goto :goto_2

    :cond_d
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->C:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_f

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    if-ne v0, v4, :cond_e

    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->a(Z)Z

    goto :goto_0

    :cond_e
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->m()Z

    goto :goto_0

    :cond_f
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->E:Landroid/widget/Button;

    if-ne p1, v2, :cond_16

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_12

    :goto_3
    if-eqz v0, :cond_15

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    if-ne v0, v5, :cond_13

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g()V

    :cond_10
    :goto_4
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_from_name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    :cond_11
    invoke-virtual {p0, v6}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->showDialog(I)V

    goto/16 :goto_0

    :cond_12
    move v0, v1

    goto :goto_3

    :cond_13
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    if-ne v0, v4, :cond_10

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->l()Z

    goto :goto_4

    :cond_14
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->n()V

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p0, v5}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->showDialog(I)V

    goto/16 :goto_0

    :cond_16
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->G:Landroid/widget/Button;

    if-ne p1, v2, :cond_17

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->r()V

    goto/16 :goto_0

    :cond_17
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->F:Lcom/coremobility/app/customui/CM_ImageButton;

    if-ne p1, v2, :cond_18

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/app/Activity;)V

    goto/16 :goto_0

    :cond_18
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->K:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    if-ne p1, v2, :cond_19

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->K:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->l:Z

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->t()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->showDialog(I)V

    goto/16 :goto_0

    :cond_19
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->L:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    if-ne p1, v2, :cond_1a

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->L:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->m:Z

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->t()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->showDialog(I)V

    goto/16 :goto_0

    :cond_1a
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->D:Landroid/widget/Button;

    if-ne p1, v2, :cond_3

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    if-lez v2, :cond_1b

    :goto_5
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->h:Ljava/lang/String;

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->x:I

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/cf;->a(Ljava/lang/String;I)V

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->showDialog(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v6, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->y:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_1b
    move v0, v1

    goto :goto_5
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_Form;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->s()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    :cond_0
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->a:Ljava/lang/String;

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->f(I)V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_RecipientEditor;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->requestFocus()Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->K:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->l:Z

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->L:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->m:Z

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->setChecked(Z)V

    :cond_2
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g(I)Z

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->f()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "com.coremobility.app.vnotes.START_NOW"

    invoke-static {v0}, Lcom/coremobility/integration/app/CM_Service;->a(Ljava/lang/String;)V

    :goto_0
    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_Form;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    const-string v4, "mWakeLock created"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v7, v4, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const v4, 0x20000006

    const-string v5, "VnotesRecordForm"

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->q:Landroid/media/ToneGenerator;

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v4, 0x2

    const/16 v5, 0x64

    invoke-direct {v0, v4, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->q:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_4

    const-string v0, "reply_vnoteid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->i:I

    const-string v0, "reply_to_guid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->b:Ljava/lang/String;

    const-string v0, "reply_to_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->c:Ljava/lang/String;

    :goto_2
    const-string v0, "record_form_display_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0xc8

    if-ne v0, v5, :cond_b

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    if-nez v0, :cond_3

    const-string v0, "record_greeting_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->x:I

    :cond_3
    const-string v0, "urgency"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->l:Z

    const-string v0, "privacy"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->m:Z

    const-string v0, "recordedFilename"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->h:Ljava/lang/String;

    const-string v0, "rec_duration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    const-string v0, "playback_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Y:I

    const-string v0, "draft_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g:I

    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    const-string v0, "state_dis"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->f:I

    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->p:I

    const-string v0, "auto_record"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->o:Z

    const-string v0, "replyIsSet"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->j:Z

    const-string v0, "errorFromFull"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->k:Z

    :cond_4
    const-string v0, "android.intent.action.SENDTO"

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v2

    :cond_5
    if-eqz v1, :cond_7

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_7

    const-string v2, "voicemsg://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "voicemail://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    if-eqz v1, :cond_7

    const-string v0, "recipients"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_d

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    if-eqz v0, :cond_7

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->a:Ljava/lang/String;

    :cond_7
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    if-eqz v0, :cond_e

    const v0, 0x7f0c011b

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->f(I)V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_8
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g(I)Z

    return-void

    :cond_9
    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->i()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v4, "ToneGen exception %s"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v7, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_a
    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->c:Ljava/lang/String;

    goto/16 :goto_2

    :cond_b
    move v0, v2

    goto/16 :goto_3

    :cond_c
    move-object v0, v3

    goto :goto_4

    :cond_d
    move-object v0, v3

    goto :goto_5

    :cond_e
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->x:I

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_f

    const v0, 0x7f0c01c0

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_f
    const v0, 0x7f0c01c4

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    const v4, 0x7f0c003c

    const/4 v0, 0x0

    const v3, 0x7f0c00f2

    const v2, 0x1080027

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

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->w:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->w:Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0125

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0126

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/coremobility/app/vnotes/hx;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/hx;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)V

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

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0227

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

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0226

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

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0228

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/hy;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/hy;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0128

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

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
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c022a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Lcom/coremobility/app/vnotes/eb;

    invoke-direct {v0, p0, p0}, Lcom/coremobility/app/vnotes/eb;-><init>(Landroid/content/Context;Lcom/coremobility/app/vnotes/ed;)V

    goto/16 :goto_0

    :pswitch_a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0224

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0225

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_c
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c023d

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c013f

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->v:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->v:Landroid/app/AlertDialog;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_9
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_2
        :pswitch_c
        :pswitch_1
        :pswitch_d
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_Form;->onDestroy()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->e(Z)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g:I

    invoke-static {v0, v1, v4}, Lcom/coremobility/app/vnotes/cq;->e(Landroid/content/Context;II)Z

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->w()V

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    const-string v1, "mWakeLock.release() and set to null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWakeLock.isHeld = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d:Landroid/os/PowerManager$WakeLock;

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/c;->c()V

    :cond_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->V:Lcom/coremobility/integration/d/f;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->V:Lcom/coremobility/integration/d/f;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/f;->e()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->V:Lcom/coremobility/integration/d/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown in onDestroy(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
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
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->r()V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

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
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_Form;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->k()Z

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->f()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->j()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_Form;->onPause()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/app/vnotes/bm;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->w()V

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->s()V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->y:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    if-lez v2, :cond_1

    :goto_1
    if-eqz v1, :cond_0

    const/4 v0, 0x6

    :cond_0
    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->g()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->a(Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPostResume()V
    .locals 4

    const/4 v3, 0x5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_Form;->onPostResume()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->U()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->b(Z)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->w:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->w:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->y:Landroid/os/Handler;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->y:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->removeDialog(I)V

    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->b(Z)V

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->j:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->i:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cq;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v2, v1}, Lcom/coremobility/app/customui/CM_RecipientEditor;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->q()V

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->j:Z

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->b()V

    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->y:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/16 v3, 0x9

    const/4 v4, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_Form;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    if-ne v2, v3, :cond_5

    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e:I

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_3

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    const/4 v2, 0x4

    const v3, 0x7f0c012a

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020066

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    if-lez v2, :cond_4

    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    const v3, 0x1d588

    if-ge v2, v3, :cond_2

    const/4 v2, 0x5

    const v3, 0x7f0c012b

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02005a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2
    const v2, 0x7f0c012c

    invoke-interface {p1, v1, v4, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02006f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_2
    return v0

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->W:I

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Y:I

    :goto_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d()V

    :cond_0
    return-void

    :cond_1
    iput p2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Y:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_Form;->onResume()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/app/vnotes/bm;)V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->M:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->requestFocus()Z

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->q()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    const/16 v0, 0x66

    invoke-super {p0, v0}, Lcom/coremobility/integration/app/CM_Form;->e(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->q()V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/dg;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Z:Z

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_Form;->i()V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/k/dg;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Z:Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->X:Lcom/coremobility/integration/d/c;

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/d/c;->a(I)Z

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->Y:I

    :cond_0
    return-void
.end method
