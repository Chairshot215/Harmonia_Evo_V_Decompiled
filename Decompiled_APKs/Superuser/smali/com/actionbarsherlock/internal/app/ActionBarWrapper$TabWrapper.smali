.class public Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;
.super Lcom/actionbarsherlock/app/ActionBar$Tab;

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# instance fields
.field private mListener:Lcom/actionbarsherlock/app/ActionBar$TabListener;

.field final mNativeTab:Landroid/app/ActionBar$Tab;

.field private mTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/ActionBar$Tab;)V
    .locals 1

    invoke-direct {p0}, Lcom/actionbarsherlock/app/ActionBar$Tab;-><init>()V

    iput-object p1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mListener:Lcom/actionbarsherlock/app/ActionBar$TabListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mListener:Lcom/actionbarsherlock/app/ActionBar$TabListener;

    invoke-interface {v0, p0}, Lcom/actionbarsherlock/app/ActionBar$TabListener;->onTabReselected(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    :cond_0
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mListener:Lcom/actionbarsherlock/app/ActionBar$TabListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mListener:Lcom/actionbarsherlock/app/ActionBar$TabListener;

    invoke-interface {v0, p0}, Lcom/actionbarsherlock/app/ActionBar$TabListener;->onTabSelected(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    :cond_0
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mListener:Lcom/actionbarsherlock/app/ActionBar$TabListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mListener:Lcom/actionbarsherlock/app/ActionBar$TabListener;

    invoke-interface {v0, p0}, Lcom/actionbarsherlock/app/ActionBar$TabListener;->onTabUnselected(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    :cond_0
    return-void
.end method

.method public select()V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    return-void
.end method

.method public setContentDescription(I)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    return-object p0
.end method

.method public setCustomView(I)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setCustomView(I)Landroid/app/ActionBar$Tab;

    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    return-object p0
.end method

.method public setIcon(I)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;

    return-object p0
.end method

.method public setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mListener:Lcom/actionbarsherlock/app/ActionBar$TabListener;

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public setText(I)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    return-object p0
.end method
