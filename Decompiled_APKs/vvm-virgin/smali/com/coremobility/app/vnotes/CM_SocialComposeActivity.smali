.class public Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;
.super Lcom/coremobility/integration/app/CM_Form;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/coremobility/app/vnotes/cc;


# instance fields
.field protected a:Ljava/lang/StringBuilder;

.field protected b:Landroid/app/ProgressDialog;

.field protected c:I

.field protected d:I

.field private e:Lcom/coremobility/app/customui/CM_Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;

.field private l:Lcom/coremobility/app/customui/CM_Button;

.field private m:Z

.field private n:Z

.field private o:Landroid/os/Handler;

.field private p:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/coremobility/integration/app/CM_Form;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->a:Ljava/lang/StringBuilder;

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->e:Lcom/coremobility/app/customui/CM_Button;

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->f:Landroid/widget/Button;

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->g:Landroid/widget/Button;

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->h:Landroid/widget/Button;

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->i:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->j:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->k:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->l:Lcom/coremobility/app/customui/CM_Button;

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->b:Landroid/app/ProgressDialog;

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->m:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c:I

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->n:Z

    new-instance v0, Lcom/coremobility/app/vnotes/bn;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/bn;-><init>(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    new-instance v0, Lcom/coremobility/app/vnotes/bo;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/bo;-><init>(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->p:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->g()V

    return-void
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 10

    const/16 v9, 0x8

    const v8, 0x7f0c027c

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->i:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->i:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c:I

    if-ne v1, v5, :cond_4

    const v1, 0x7f02002b

    :goto_1
    iget v2, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c:I

    if-ne v2, v5, :cond_5

    const v2, 0x7f0c028f

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v2, 0x7f0c0290

    :cond_1
    const-string v3, ""

    iget v4, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c:I

    if-ne v4, v5, :cond_8

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremobility/app/vnotes/bw;->d()Lcom/a/a/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/e;->a()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "preference_facebook_name"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const v4, 0x7f0c02a3

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    :goto_3
    iget v4, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->d:I

    packed-switch v4, :pswitch_data_0

    :goto_4
    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->b(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, ""

    goto :goto_0

    :cond_4
    const v1, 0x7f02002c

    goto :goto_1

    :cond_5
    const v2, 0x7f0c028e

    goto :goto_2

    :cond_6
    const v3, 0x7f0c02a1

    invoke-virtual {p0, v3}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_7
    const v3, 0x7f0c02a1

    invoke-virtual {p0, v3}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_8
    iget v4, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c:I

    if-ne v4, v6, :cond_2

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremobility/app/vnotes/bw;->e()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "preference_twitter_user_screen_name"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const v4, 0x7f0c02a4

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_9
    const v3, 0x7f0c02a2

    invoke-virtual {p0, v3}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_a
    const v3, 0x7f0c02a2

    invoke-virtual {p0, v3}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :pswitch_0
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->l:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v2, v3}, Lcom/coremobility/app/customui/CM_Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->j:Landroid/widget/TextView;

    const v2, 0x7f0c0290

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->e:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v1, v8}, Lcom/coremobility/app/customui/CM_Button;->setText(I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    goto :goto_4

    :pswitch_1
    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->l:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v4, v3}, Lcom/coremobility/app/customui/CM_Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->e:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v1, v8}, Lcom/coremobility/app/customui/CM_Button;->setText(I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    goto/16 :goto_4

    :pswitch_2
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->l:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v2, v3}, Lcom/coremobility/app/customui/CM_Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->e:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v1, v8}, Lcom/coremobility/app/customui/CM_Button;->setText(I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    goto/16 :goto_4

    :pswitch_3
    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->l:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v4, v3}, Lcom/coremobility/app/customui/CM_Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->e:Lcom/coremobility/app/customui/CM_Button;

    const v2, 0x7f0c027f

    invoke-virtual {v1, v2}, Lcom/coremobility/app/customui/CM_Button;->setText(I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const v0, 0x7f0c028f

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0c0290

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->e:Lcom/coremobility/app/customui/CM_Button;

    const v2, 0x7f0c027f

    invoke-virtual {v1, v2}, Lcom/coremobility/app/customui/CM_Button;->setText(I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->e:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/coremobility/app/customui/CM_Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->g:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->h:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void

    :cond_1
    const v0, 0x7f0c028e

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->e:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v2, v1, v3, v3, v3}, Lcom/coremobility/app/customui/CM_Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->e:Lcom/coremobility/app/customui/CM_Button;

    const v2, 0x7f0c027c

    invoke-virtual {v1, v2}, Lcom/coremobility/app/customui/CM_Button;->setText(I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->g:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->h:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private b(I)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->e:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v2}, Lcom/coremobility/app/customui/CM_Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->e:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->e:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->e:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private c()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c:I

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0c0294

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const v0, 0x7f0c028d

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0c028c

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c(I)V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic c(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V
    .locals 2

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/bw;->d(Landroid/app/Activity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, p0, v1}, Lcom/coremobility/app/vnotes/bw;->a(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.speech.extra.PROMPT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.speech.extra.MAX_RESULTS"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-direct {p0, v3}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->b(I)Z

    return-void
.end method

.method static synthetic d(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->f()V

    return-void
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 6

    const/16 v5, 0x68

    const/16 v4, 0x67

    const/16 v3, 0x66

    const/16 v2, 0x65

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    return-void
.end method

.method static synthetic e(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V
    .locals 3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->i:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private f()V
    .locals 2

    const/16 v1, 0x66

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->b(I)Z

    move-result v0

    return v0
.end method

.method private g()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->l:Lcom/coremobility/app/customui/CM_Button;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_facebook_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f0c02a3

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->l:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v1, v0}, Lcom/coremobility/app/customui/CM_Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->l:Lcom/coremobility/app/customui/CM_Button;

    const v1, 0x7f0c02a1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_Button;->setText(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->l:Lcom/coremobility/app/customui/CM_Button;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_twitter_user_screen_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f0c02a4

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->l:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v1, v0}, Lcom/coremobility/app/customui/CM_Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->l:Lcom/coremobility/app/customui/CM_Button;

    const v1, 0x7f0c02a2

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_Button;->setText(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic g(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->b()V

    return-void
.end method

.method static synthetic h(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->i:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public final a(ILcom/coremobility/app/vnotes/cb;)V
    .locals 4

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSocialStatusUpdateError StatusMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x67

    if-eq p1, v0, :cond_0

    const/16 v0, 0x66

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget v1, p2, Lcom/coremobility/app/vnotes/cb;->a:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    const-string v1, "post message is empty"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8c

    if-le v0, v1, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->showDialog(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bw;->e()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, p0, v1}, Lcom/coremobility/app/vnotes/bw;->a(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->showDialog(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c(I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/coremobility/app/vnotes/bw;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a_()V
    .locals 3

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSocialStatusOAuthSuccess StatusMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/app/vnotes/bv;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/bv;-><init>(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b_(I)V
    .locals 5

    const/16 v1, 0x64

    const/4 v4, 0x1

    const/4 v0, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSocialStatusUpdateDone StatusMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->f()V

    if-eq p1, v4, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    invoke-static {p1}, Lcom/coremobility/app/vnotes/bw;->a(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    if-eqz v0, :cond_1

    if-ne p1, v4, :cond_2

    const/16 v0, 0x65

    :goto_0
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iput v1, v2, Landroid/os/Message;->what:I

    iput p1, v2, Landroid/os/Message;->arg1:I

    iput v0, v2, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    const-wide/16 v3, 0x96

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v0, -0x1

    const/4 v7, 0x6

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/coremobility/integration/app/CM_Form;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :pswitch_1
    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const-string v1, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VOICE_RECOGNITION_INTENT"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VOICE_RECOGNITION_INTENT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v7, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    if-ne p2, v0, :cond_0

    const-string v0, "ACTIVITY_RESULT_FACEBOOK_OAUTH"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bw;->d()Lcom/a/a/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/a/a/e;->a(IILandroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    if-ne p2, v0, :cond_3

    if-eqz p3, :cond_2

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

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->g()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    const/16 v1, 0x67

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Exception in onActivityResult "

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    if-nez p2, :cond_0

    const-string v0, "Twitter login activity cancelled "

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b00d3

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f0b00d1

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->d()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->showDialog(I)V

    goto :goto_0

    :cond_3
    const v1, 0x7f0b00d2

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->d()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->b(I)Z

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->showDialog(I)V

    goto :goto_0

    :cond_5
    const v1, 0x7f0b00d4

    if-ne v0, v1, :cond_8

    check-cast p1, Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {p1}, Lcom/coremobility/app/customui/CM_Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0c027c

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const v1, 0x7f0c027f

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c:I

    if-ne v0, v2, :cond_7

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->i:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/coremobility/app/vnotes/bw;->b(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->showDialog(I)V

    invoke-direct {p0, v2}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c(I)V

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->i:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const v1, 0x7f0b00ce

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bw;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, p0, v1}, Lcom/coremobility/app/vnotes/bw;->a(Landroid/app/Activity;I)V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bw;->d()Lcom/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/bw;->d(Landroid/app/Activity;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_Form;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03004b

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->setContentView(I)V

    const v0, 0x7f0b00d4

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->e:Lcom/coremobility/app/customui/CM_Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->e:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, p0}, Lcom/coremobility/app/customui/CM_Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->e:Lcom/coremobility/app/customui/CM_Button;

    const v3, 0x7f020006

    invoke-virtual {v0, v3}, Lcom/coremobility/app/customui/CM_Button;->setBackgroundResource(I)V

    const v0, 0x7f0b00ce

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->l:Lcom/coremobility/app/customui/CM_Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->l:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, p0}, Lcom/coremobility/app/customui/CM_Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->l:Lcom/coremobility/app/customui/CM_Button;

    const v3, 0x7f02002a

    invoke-virtual {v0, v3}, Lcom/coremobility/app/customui/CM_Button;->setBackgroundResource(I)V

    const v0, 0x7f0b00d1

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00d2

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00d3

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00cd

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->k:Landroid/widget/ImageView;

    const v0, 0x7f0b00cf

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->i:Landroid/widget/EditText;

    const v0, 0x7f0b00d0

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->i:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->p:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "status_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c:I

    :cond_1
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->e:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v2, v0}, Lcom/coremobility/app/customui/CM_Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->g:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->h:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->m:Z

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->n:Z

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    const v4, 0x7f0c00f3

    const/4 v3, 0x0

    const v1, 0x1080027

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lcom/coremobility/app/vnotes/a;->a()Lcom/coremobility/app/vnotes/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v3}, Lcom/coremobility/app/vnotes/a;->a(Landroid/app/Activity;ILcom/coremobility/app/vnotes/be;)Landroid/app/AlertDialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0280

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0281

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0282

    new-instance v2, Lcom/coremobility/app/vnotes/bp;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/bp;-><init>(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0284

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0285

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0286

    new-instance v2, Lcom/coremobility/app/vnotes/bq;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/bq;-><init>(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f0c0288

    :goto_1
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->b:Landroid/app/ProgressDialog;

    const v2, 0x7f0c01e7

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->b:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->b:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->b:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/coremobility/app/vnotes/br;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/br;-><init>(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->b:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    :cond_0
    const v0, 0x7f0c0287

    goto :goto_1

    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0291

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0292

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0293

    new-instance v2, Lcom/coremobility/app/vnotes/bs;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/bs;-><init>(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c003c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00f2

    new-instance v2, Lcom/coremobility/app/vnotes/bt;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/bt;-><init>(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0298

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_Form;->onDestroy()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->e()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/coremobility/integration/app/CM_Form;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->showDialog(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_Form;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "voicemail://tweet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "oauth_verifier"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/bw;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->g()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    const/16 v1, 0x67

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_Form;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->n:Z

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->e()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    check-cast p2, Landroid/app/AlertDialog;

    const v0, 0x7f0c00f2

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/bu;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/bu;-><init>(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7b
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    const-wide/16 v2, 0x32

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_Form;->onResume()V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->m:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->b(I)Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->showDialog(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->d:I

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->d:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->b(I)Z

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->b()V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c:I

    packed-switch v0, :pswitch_data_0

    :goto_2
    if-eqz v1, :cond_3

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->n:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bw;->d()Lcom/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/e;->a()Z

    move-result v1

    goto :goto_2

    :pswitch_1
    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bw;->e()Z

    move-result v1

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->o:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 1

    const/16 v0, 0x6f

    invoke-super {p0, v0}, Lcom/coremobility/integration/app/CM_Form;->e(I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    invoke-static {p0}, Lcom/coremobility/app/vnotes/bw;->a(Lcom/coremobility/app/vnotes/cc;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_Form;->i()V

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    invoke-static {p0}, Lcom/coremobility/app/vnotes/bw;->b(Lcom/coremobility/app/vnotes/cc;)V

    return-void
.end method
