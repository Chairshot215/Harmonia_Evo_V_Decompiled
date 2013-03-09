.class public final Lcom/coremobility/app/vnotes/ki;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field protected a:Landroid/widget/ImageButton;

.field protected b:Landroid/widget/ImageView;

.field protected c:Landroid/widget/SeekBar;

.field protected d:Landroid/widget/ImageView;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/widget/TextView;

.field protected g:Landroid/widget/TextView;

.field protected h:Landroid/widget/TextView;

.field protected i:Landroid/widget/TextView;

.field protected j:Landroid/widget/TextView;

.field protected k:Landroid/widget/Button;

.field protected l:Landroid/widget/LinearLayout;

.field protected m:Landroid/widget/TextView;

.field protected n:Landroid/widget/TextView;

.field protected o:Landroid/widget/ScrollView;

.field protected p:Landroid/widget/ImageView;

.field protected q:Landroid/widget/ImageView;

.field protected r:Landroid/widget/TextView;

.field protected s:Landroid/widget/TextView;

.field protected t:Landroid/widget/ImageView;

.field protected u:Landroid/widget/RelativeLayout;

.field protected v:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

.field protected w:Lcom/coremobility/app/customui/CM_SubscribeButton;

.field protected x:Landroid/widget/TextView;

.field protected y:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coremobility/app/vnotes/ki;->v:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/ki;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030040

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0b0067

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/ki;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/ki;->a:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->a:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ki;->v:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->c:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    move v1, v0

    :goto_0
    const v0, 0x7f0b00b6

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/ki;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/ki;->c:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->c:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/coremobility/app/vnotes/ki;->v:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    const v0, 0x7f0b0096

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/ki;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/ki;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->d:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v0, 0x7f0b0097

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/ki;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/ki;->e:Landroid/widget/TextView;

    const v0, 0x7f0b00b2

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/ki;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/ki;->f:Landroid/widget/TextView;

    const v0, 0x7f0b00b1

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/ki;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/ki;->g:Landroid/widget/TextView;

    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/ki;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/ki;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :goto_1
    const v0, 0x7f0b00b7

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/ki;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/ki;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    :cond_0
    const v0, 0x7f0b00b8

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/ki;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/ki;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b009a

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/ki;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/ki;->k:Landroid/widget/Button;

    const v0, 0x7f0b00ac

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/ki;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/ki;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f0b00aa

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/ki;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/ki;->o:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->o:Landroid/widget/ScrollView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/ki;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/ki;->b:Landroid/widget/ImageView;

    const v0, 0x7f0b0079

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/ki;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/ki;->p:Landroid/widget/ImageView;

    const v0, 0x7f0b007a

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/ki;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/ki;->q:Landroid/widget/ImageView;

    const v0, 0x7f0b00ae

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/ki;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/ki;->r:Landroid/widget/TextView;

    const v0, 0x7f0b00b0

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/ki;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/ki;->s:Landroid/widget/TextView;

    const v0, 0x7f0b00af

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/ki;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/ki;->t:Landroid/widget/ImageView;

    const v0, 0x7f0b00ab

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/ki;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/ki;->u:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->u:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    const v0, 0x7f0b00b3

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/ki;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0b003f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coremobility/app/vnotes/ki;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ki;->m:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0b003e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coremobility/app/vnotes/ki;->n:Landroid/widget/TextView;

    const v1, 0x7f0b0042

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coremobility/app/customui/CM_SubscribeButton;

    iput-object v1, p0, Lcom/coremobility/app/vnotes/ki;->w:Lcom/coremobility/app/customui/CM_SubscribeButton;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ki;->w:Lcom/coremobility/app/customui/CM_SubscribeButton;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/ki;->v:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-virtual {v1, v2}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0043

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/ki;->x:Landroid/widget/TextView;

    const v0, 0x7f0b0041

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/ki;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/ki;->y:Landroid/view/View;

    return-void

    :cond_1
    move-object v1, v3

    goto/16 :goto_1

    :cond_2
    move v1, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ki;->o:Landroid/widget/ScrollView;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ki;->v:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ki;->o:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ki;->v:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Landroid/view/MotionEvent;)Z

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_2
    iget-object v1, p0, Lcom/coremobility/app/vnotes/ki;->m:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v0, :cond_3

    if-ne v0, v2, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->v:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result v0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/ki;->o:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v1, v3, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->v:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    if-ne v0, v4, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result v0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/ki;->o:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v1, v3, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->o:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_6
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result v0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/ki;->o:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v1, v3, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->o:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method
