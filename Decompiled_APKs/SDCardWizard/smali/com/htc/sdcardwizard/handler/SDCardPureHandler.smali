.class public abstract Lcom/htc/sdcardwizard/handler/SDCardPureHandler;
.super Lcom/htc/sdcardwizard/handler/SDCardHandler;
.source "SDCardPureHandler.java"


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;)V
    .locals 0
    .parameter "owner"
    .parameter "iconGetter"

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/htc/sdcardwizard/handler/SDCardHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;)V

    .line 11
    return-void
.end method


# virtual methods
.method public abstract deleteItems()V
.end method
