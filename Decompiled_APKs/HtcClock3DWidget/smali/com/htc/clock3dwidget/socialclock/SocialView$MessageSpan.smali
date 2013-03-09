.class public Lcom/htc/clock3dwidget/socialclock/SocialView$MessageSpan;
.super Landroid/text/style/CharacterStyle;
.source "SocialView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/socialclock/SocialView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageSpan"
.end annotation


# instance fields
.field private mBold:Z

.field final synthetic this$0:Lcom/htc/clock3dwidget/socialclock/SocialView;


# direct methods
.method public constructor <init>(Lcom/htc/clock3dwidget/socialclock/SocialView;Z)V
    .locals 1
    .parameter
    .parameter "bold"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/clock3dwidget/socialclock/SocialView$MessageSpan;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialView;

    .line 62
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialView$MessageSpan;->mBold:Z

    .line 63
    iput-boolean p2, p0, Lcom/htc/clock3dwidget/socialclock/SocialView$MessageSpan;->mBold:Z

    .line 64
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "ds"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialView$MessageSpan;->mBold:Z

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 71
    :cond_0
    return-void
.end method
