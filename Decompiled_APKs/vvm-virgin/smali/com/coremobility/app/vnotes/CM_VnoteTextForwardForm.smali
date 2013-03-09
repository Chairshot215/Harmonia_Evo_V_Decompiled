.class public final Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;
.super Lcom/coremobility/integration/app/CM_Form;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/coremobility/app/vnotes/ed;
.implements Lcom/coremobility/app/vnotes/hq;
.implements Lcom/coremobility/integration/app/k;
.implements Lcom/coremobility/integration/b/e;


# instance fields
.field private F:Landroid/widget/Button;

.field private G:Lcom/coremobility/app/customui/CM_ImageButton;

.field private H:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

.field private I:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

.field private J:Lcom/coremobility/app/customui/CM_RecipientEditor;

.field private K:Landroid/widget/TextView;

.field private final L:Landroid/view/View$OnFocusChangeListener;

.field private final M:Landroid/text/TextWatcher;

.field private a:Z

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/coremobility/integration/app/CM_Form;-><init>()V

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->b:Ljava/lang/String;

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->c:I

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->d:I

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->e:I

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->f:I

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->i:Ljava/lang/String;

    new-instance v0, Lcom/coremobility/app/vnotes/ju;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/ju;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->L:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/coremobility/app/vnotes/jv;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/jv;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->M:Landroid/text/TextWatcher;

    return-void
.end method

.method private a()V
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->J:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->J:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->J:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->J:Lcom/coremobility/app/customui/CM_RecipientEditor;

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

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->getApplicationContext()Landroid/content/Context;

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

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->e:I

    invoke-static {p0, v1, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;ILandroid/content/ContentValues;)Z

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->e:I

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->f(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->showDialog(I)V

    :goto_1
    return-void

    :cond_1
    iput-boolean v7, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->a:Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->J:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->c()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v7, :cond_3

    const v0, 0x7f0c012e

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_2
    const v1, 0x7f0c0124

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->finish()V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v7, :cond_4

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

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    goto :goto_2

    :cond_5
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->showDialog(I)V

    goto :goto_1
.end method

.method private a(I)V
    .locals 2

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->f:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->f:I

    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->setContentView(I)V

    const v0, 0x7f0b006a

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0018

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->F:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->F:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_ImageButton;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->G:Lcom/coremobility/app/customui/CM_ImageButton;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->G:Lcom/coremobility/app/customui/CM_ImageButton;

    const v1, 0x7f020019

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->G:Lcom/coremobility/app/customui/CM_ImageButton;

    invoke-virtual {v0, p0}, Lcom/coremobility/app/customui/CM_ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0068

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->H:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->H:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    const v1, 0x7f0c0130

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->H:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    const v1, 0x7f0c0131

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->H:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    const v1, 0x7f02007a

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->a(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->H:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    invoke-virtual {v0, p0}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->H:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->g:Z

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->setChecked(Z)V

    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->I:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->I:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    const v1, 0x7f0c0132

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->I:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    const v1, 0x7f0c0133

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->I:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->a(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->I:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    invoke-virtual {v0, p0}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->I:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->h:Z

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->setChecked(Z)V

    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_RecipientEditor;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->J:Lcom/coremobility/app/customui/CM_RecipientEditor;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->J:Lcom/coremobility/app/customui/CM_RecipientEditor;

    new-instance v1, Lcom/coremobility/app/vnotes/dc;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/dc;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_RecipientEditor;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->J:Lcom/coremobility/app/customui/CM_RecipientEditor;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->M:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_RecipientEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->J:Lcom/coremobility/app/customui/CM_RecipientEditor;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->L:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_RecipientEditor;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0b0050

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->K:Landroid/widget/TextView;

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->c()V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->J:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->j:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->j:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->b()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->J:Lcom/coremobility/app/customui/CM_RecipientEditor;

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

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->J:Lcom/coremobility/app/customui/CM_RecipientEditor;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_RecipientEditor;->append(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->J:Lcom/coremobility/app/customui/CM_RecipientEditor;

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

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->c()V

    :cond_1
    return-void
.end method

.method private c()V
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->J:Lcom/coremobility/app/customui/CM_RecipientEditor;

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

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_2
    const v0, 0x7f0c0149

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private c(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->c:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "smvvm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_1
    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/coremobility/integration/file/b;->b(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    move-object v3, v1

    :goto_2
    if-nez v2, :cond_2

    invoke-static {p1}, Lcom/coremobility/integration/file/b;->c(Ljava/lang/String;)J

    move-result-wide v1

    :goto_3
    long-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->K:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2, p1}, Lcom/coremobility/integration/file/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    move-object v3, v1

    goto :goto_2

    :cond_2
    invoke-static {v2, p1}, Lcom/coremobility/integration/file/b;->b(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_3

    :catch_0
    move-exception v1

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in getVnoteText: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move-object v2, v1

    goto :goto_1
.end method

.method private d()V
    .locals 6

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->g:Z

    if-eqz v2, :cond_0

    const/16 v0, 0x2000

    :cond_0
    iget-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->h:Z

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

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->e:I

    invoke-static {p0, v0, v1}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;ILandroid/content/ContentValues;)Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final c(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->a()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->showDialog(I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->removeDialog(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/coremobility/integration/app/CM_Form;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->j:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_from_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->showDialog(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->a()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->F:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->showDialog(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->G:Lcom/coremobility/app/customui/CM_ImageButton;

    if-ne p1, v0, :cond_5

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/app/Activity;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->H:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->H:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->g:Z

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->d()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->I:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->I:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->h:Z

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->d()V

    goto :goto_0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_Form;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->J:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->i:Ljava/lang/String;

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->a(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->J:Lcom/coremobility/app/customui/CM_RecipientEditor;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_RecipientEditor;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->J:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->requestFocus()Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->H:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->g:Z

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->I:Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->h:Z

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_TwoLineCheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->c(Ljava/lang/String;)Z

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->b()V

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
    .locals 1

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_Form;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0149

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->setTitle(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "urgency"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->g:Z

    const-string v0, "privacy"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->h:Z

    const-string v0, "forward_vnotedir"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->c:I

    const-string v0, "forward_vnoteid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->d:I

    const-string v0, "vnoteid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->e:I

    const-string v0, "filename"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->b:Ljava/lang/String;

    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->f:I

    const-string v0, "recipientEditString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->i:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->a(I)V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->d:I

    if-gtz v0, :cond_2

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->setResult(I)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->finish()V

    :cond_2
    return-void
.end method

.method protected final onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

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

    const v2, 0x7f0c0125

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0126

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/coremobility/app/vnotes/jw;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/jw;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c00f3

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
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

    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c003f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0244

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0228

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/jx;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/jx;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->getString(I)Ljava/lang/String;

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

    :pswitch_6
    new-instance v0, Lcom/coremobility/app/vnotes/eb;

    invoke-direct {v0, p0, p0}, Lcom/coremobility/app/vnotes/eb;-><init>(Landroid/content/Context;Lcom/coremobility/app/vnotes/ed;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_Form;->onDestroy()V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->a:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->e:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->e:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/coremobility/app/vnotes/cq;->e(Landroid/content/Context;II)Z

    :cond_0
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->showDialog(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/coremobility/integration/app/CM_Form;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final onPause()V
    .locals 3

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_Form;->onPause()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method protected final onResume()V
    .locals 14

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_Form;->onResume()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->J:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->requestFocus()Z

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->e:I

    if-nez v0, :cond_8

    new-instance v6, Lcom/coremobility/integration/h/c;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/coremobility/integration/h/c;-><init>(B)V

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_from_name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->setResult(I)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->finish()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_8

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->J:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->J:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coremobility/integration/h/c;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->e:I

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->e:I

    if-nez v0, :cond_1

    const/4 v0, 0x6

    const-string v1, "row could not be generated"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->setResult(I)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->finish()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

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

    const-string v2, "file_size"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "file_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "filename_only"

    aput-object v2, v0, v1

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->c:I

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->d:I

    invoke-static {p0, v1, v2, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x6

    const-string v1, "no vnote entry found to forward"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->setResult(I)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->finish()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->b:Ljava/lang/String;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    if-eq v3, v0, :cond_3

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vnote is not text "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->setResult(I)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->finish()V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    const-string v0, ""

    new-instance v1, Lcom/coremobility/integration/h/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->d:I

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->e:I

    invoke-static {v2, v3, v1}, Lcom/coremobility/app/vnotes/cq;->a(IILcom/coremobility/integration/h/c;)V

    iget v1, v1, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v1, :cond_b

    const/4 v0, 0x6

    const-string v1, "MIME row could not be generated"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->setResult(I)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->finish()V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->e:I

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->b:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;ILjava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    const-string v1, "MIME row could not be generated"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->setResult(I)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->finish()V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    move-object v1, v9

    :goto_2
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    move-object v0, v6

    :goto_3
    const-string v2, "previous_sender"

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sent_timestamp"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "forward_to_guid"

    invoke-virtual {v10, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->e:I

    invoke-static {p0, v0, v10}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;ILandroid/content/ContentValues;)Z

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    move-object v0, v7

    goto :goto_3

    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x6

    const-string v1, "no vnote entry found to forward"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->setResult(I)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->finish()V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->b:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->c(Ljava/lang/String;)Z

    :cond_9
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->b()V

    goto/16 :goto_1

    :cond_a
    move-object v0, v8

    goto :goto_3

    :cond_b
    move-object v1, v0

    goto :goto_2
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "urgency"

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->g:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "privacy"

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "recipients"

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->J:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v1}, Lcom/coremobility/app/customui/CM_RecipientEditor;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "forward_vnotedir"

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "forward_vnoteid"

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "vnoteid"

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "filename"

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "orientation"

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "recipientEditString"

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->J:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v1}, Lcom/coremobility/app/customui/CM_RecipientEditor;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final onStart()V
    .locals 5

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/16 v0, 0x6d

    invoke-super {p0, v0}, Lcom/coremobility/integration/app/CM_Form;->e(I)V

    new-instance v0, Lcom/coremobility/integration/h/c;

    invoke-direct {v0, v4}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->c:I

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->d:I

    invoke-static {v1, v2, v0}, Lcom/coremobility/integration/app/j;->a(IILcom/coremobility/integration/h/c;)V

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VnoteSetSafe"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->d:I

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

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->c()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->b()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->finish()V

    goto :goto_0
.end method

.method protected final onStop()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_Form;->i()V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->c:I

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

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->d:I

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
