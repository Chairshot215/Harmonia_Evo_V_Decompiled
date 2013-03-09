.class public Lcom/android/systemui/statusbar/phone/TickerView;
.super Landroid/widget/TextSwitcher;
.source "TickerView.java"


# instance fields
.field mTicker:Lcom/android/systemui/statusbar/phone/Ticker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextSwitcher;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TickerView;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/Ticker;->reflowText()V

    return-void
.end method

.method public setTicker(Lcom/android/systemui/statusbar/phone/Ticker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TickerView;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    return-void
.end method
