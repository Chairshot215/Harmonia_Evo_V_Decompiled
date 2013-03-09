.class public Lcom/htc/preference/HtcPreference;
.super Ljava/lang/Object;
.source "HtcPreference.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/htc/preference/HtcOnDependencyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcPreference$BaseSavedState;,
        Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;,
        Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;,
        Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;,
        Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/preference/HtcPreference;",
        ">;",
        "Lcom/htc/preference/HtcOnDependencyChangeListener;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ORDER:I = 0x7fffffff


# instance fields
.field private mBaseMethodCalled:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mHasBoundView:Z

.field private mHasSpecifiedLayout:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mIconVisibility:Z

.field private mId:J

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;

.field private mOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

.field private mOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

.field private mOnFirstBindViewListener:Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;

.field private mOrder:I

.field private mPersistent:Z

.field private mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

.field private mRequiresKey:Z

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const v6, 0x10900bc

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    iput-boolean v4, p0, Lcom/htc/preference/HtcPreference;->mHasBoundView:Z

    const v3, 0x7fffffff

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mEnabled:Z

    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mSelectable:Z

    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mPersistent:Z

    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mDependencyMet:Z

    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mShouldDisableView:Z

    iput v6, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    iput-boolean v4, p0, Lcom/htc/preference/HtcPreference;->mHasSpecifiedLayout:Z

    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mIconResId:I

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mSummary:Ljava/lang/CharSequence;

    goto :goto_1

    :pswitch_4
    iget v3, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    goto :goto_1

    :pswitch_5
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mFragment:Ljava/lang/String;

    goto :goto_1

    :pswitch_6
    iget v3, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    iget v3, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    goto :goto_1

    :sswitch_0
    iput v6, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    goto :goto_1

    :sswitch_1
    const v3, 0x10900be

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    goto :goto_1

    :sswitch_2
    const v3, 0x10900c0

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    goto :goto_1

    :pswitch_7
    iget v3, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    goto :goto_1

    :pswitch_8
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mEnabled:Z

    goto :goto_1

    :pswitch_9
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mSelectable:Z

    goto :goto_1

    :pswitch_a
    iget-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mPersistent:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mPersistent:Z

    goto :goto_1

    :pswitch_b
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    goto :goto_1

    :pswitch_c
    invoke-virtual {p0, v0, v1}, Lcom/htc/preference/HtcPreference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mDefaultValue:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_d
    iget-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mShouldDisableView:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mShouldDisableView:Z

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const v3, 0x1010091

    if-ne p3, v3, :cond_1

    const v3, 0x10900bf

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.htc.preference"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mHasSpecifiedLayout:Z

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;->applyExtendedAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_6
        :pswitch_2
        :pswitch_9
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1090002 -> :sswitch_1
        0x109006a -> :sswitch_0
        0x109006b -> :sswitch_1
        0x109006e -> :sswitch_2
        0x1090070 -> :sswitch_0
        0x1090072 -> :sswitch_0
    .end sparse-switch
.end method

.method private applyExtendedAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v3, v6, [I

    const v4, 0x1010002

    aput v4, v3, v5

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-boolean v6, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private dispatchSetInitialValue()V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/htc/preference/HtcPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/preference/HtcPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method private registerDependency()V
    .locals 4

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreference;->registerDependent(Lcom/htc/preference/HtcPreference;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found for preference \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" (title: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerDependent(Lcom/htc/preference/HtcPreference;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependents:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/htc/preference/HtcPreference;->onDependencyChanged(Lcom/htc/preference/HtcPreference;Z)V

    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/htc/preference/HtcPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private syncIconDrawable()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private syncIconVisibility()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceManager;->shouldCommit()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private unregisterDependency()V
    .locals 2

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreference;->unregisterDependent(Lcom/htc/preference/HtcPreference;)V

    :cond_0
    return-void
.end method

.method private unregisterDependent(Lcom/htc/preference/HtcPreference;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected callChangeListener(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public compareTo(Lcom/htc/preference/HtcPreference;)I
    .locals 2

    const v1, 0x7fffffff

    iget v0, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/htc/preference/HtcPreference;->mOrder:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    iget v1, p1, Lcom/htc/preference/HtcPreference;->mOrder:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreference;->compareTo(Lcom/htc/preference/HtcPreference;)I

    move-result v0

    return v0
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/preference/HtcPreference;->mBaseMethodCalled:Z

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, p0, Lcom/htc/preference/HtcPreference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/preference/HtcPreference;->mBaseMethodCalled:Z

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/preference/HtcPreference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Lcom/htc/preference/HtcPreference;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    goto :goto_0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcPreference;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    const/16 v4, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getIconVisibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    return v0
.end method

.method getId()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/preference/HtcPreference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    iget v0, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getOnPreferenceFirstBindViewListener()Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mOnFirstBindViewListener:Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    iget v0, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    return v0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedFloat(F)F
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedInt(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedLong(J)J
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-wide p1

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0
.end method

.method public getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getShouldDisableView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mShouldDisableView:Z

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mSummaryView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    iget v0, p0, Lcom/htc/preference/HtcPreference;->mTitleRes:I

    return v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/htc/preference/HtcPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    return-object p1

    :cond_1
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    const v1, 0x10900be

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/htc/preference/HtcPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0
.end method

.method public getWidgetLayoutResource()I
    .locals 1

    iget v0, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

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

.method hasSpecifiedLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mHasSpecifiedLayout:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mPersistent:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mSelectable:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;->onPreferenceChange(Lcom/htc/preference/HtcPreference;)V

    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, p0, p1}, Lcom/htc/preference/HtcPreference;->onDependencyChanged(Lcom/htc/preference/HtcPreference;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Lcom/htc/preference/HtcPreference;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->registerDependency()V

    return-void
.end method

.method protected onAttachedToHierarchy(Lcom/htc/preference/HtcPreferenceManager;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/preference/HtcPreference;->mId:J

    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->dispatchSetInitialValue()V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 8

    const v7, 0x1020006

    const/4 v3, 0x0

    const/16 v4, 0x8

    const v5, 0x1020016

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/preference/HtcPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v5, 0x1020010

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/preference/HtcPreference;->mSummaryView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget v5, p0, Lcom/htc/preference/HtcPreference;->mIconResId:I

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    :cond_3
    iget-object v5, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/htc/preference/HtcPreference;->mIconResId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object v5, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v5, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_a

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->syncIconVisibility()Z

    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->syncIconDrawable()Z

    iget-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mShouldDisableView:Z

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->isEnabled()Z

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/htc/preference/HtcPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    :cond_7
    iget-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mHasBoundView:Z

    if-nez v3, :cond_8

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mHasBoundView:Z

    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mOnFirstBindViewListener:Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mOnFirstBindViewListener:Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;

    invoke-interface {v3, p0}, Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;->onPreferenceFirstBindView(Lcom/htc/preference/HtcPreference;)V

    :cond_8
    return-void

    :cond_9
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_a
    move v3, v4

    goto :goto_1
.end method

.method protected onClick()V
    .locals 0

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13

    iget-object v9, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iget v9, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    const/4 v10, 0x0

    invoke-virtual {v1, v9, p1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget v9, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    const v10, 0x10900be

    if-ne v9, v10, :cond_0

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    const v9, 0x1020016

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    const v10, 0x203002a

    invoke-virtual {v5, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    iget v9, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    const v10, 0x10900bc

    if-ne v9, v10, :cond_1

    const v9, 0x1020016

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v9, 0x1020010

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    iget-object v9, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    const v10, 0x2030012

    invoke-virtual {v5, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v9, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    const v10, 0x2030025

    invoke-virtual {v2, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    const v9, 0x1020018

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    iget v9, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    if-eqz v9, :cond_4

    iget v9, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    invoke-virtual {v1, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_2
    :goto_0
    const v9, 0x10202da

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    if-eqz v4, :cond_3

    const-string v9, "HTCPreference"

    const-string v10, "switchwidget!=null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/htc/widget/HtcToggleButton;

    iget-object v9, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9}, Lcom/htc/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcToggleButton;->setClickable(Z)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcToggleButton;->setFocusable(Z)V

    const v9, 0x10202da

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcToggleButton;->setId(I)V

    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroid/widget/Switch;->setVisibility(I)V

    invoke-virtual {v4}, Landroid/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v4}, Landroid/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v3, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_3
    return-object v0

    :cond_4
    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDependencyChanged(Lcom/htc/preference/HtcPreference;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mDependencyMet:Z

    if-ne v0, p2, :cond_0

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mDependencyMet:Z

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->notifyDependencyChange(Z)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->unregisterDependency()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mBaseMethodCalled:Z

    sget-object v0, Lcom/htc/preference/HtcPreference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mBaseMethodCalled:Z

    sget-object v0, Lcom/htc/preference/HtcPreference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public peekExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method performClick(Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->onClick()V

    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    invoke-interface {v3, p0}, Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;->onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getOnPreferenceTreeClickListener()Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {v1, p1, p0}, Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected persistBoolean(Z)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->getPersistedBoolean(Z)Z

    move-result v1

    if-ne p1, v1, :cond_1

    :goto_0
    return v2

    :cond_1
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_0
.end method

.method protected persistFloat(F)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v2, 0x7fc0

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->getPersistedFloat(F)F

    move-result v2

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistInt(I)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    xor-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->getPersistedInt(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistLong(J)Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/htc/preference/HtcPreference;->getPersistedLong(J)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-ne p1, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistStringSet(Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method requireKey()V
    .locals 2

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mRequiresKey:Z

    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mDefaultValue:Ljava/lang/Object;

    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->unregisterDependency()V

    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->registerDependency()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/htc/preference/HtcPreference;->mEnabled:Z

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->notifyDependencyChange(Z)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mFragment:Ljava/lang/String;

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    iput p1, p0, Lcom/htc/preference/HtcPreference;->mIconResId:I

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->syncIconDrawable()Z

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setIconVisibility(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->syncIconVisibility()Z

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mRequiresKey:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->hasKey()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->requireKey()V

    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 1

    iget v0, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mHasSpecifiedLayout:Z

    :cond_0
    iput p1, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;

    return-void
.end method

.method public setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    return-void
.end method

.method public setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    return-void
.end method

.method public setOnPreferenceFirstBindViewListener(Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mOnFirstBindViewListener:Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;

    return-void
.end method

.method public setOrder(I)V
    .locals 1

    iget v0, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyHierarchyChanged()V

    :cond_0
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/preference/HtcPreference;->mPersistent:Z

    return-void
.end method

.method public setSelectable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/htc/preference/HtcPreference;->mSelectable:Z

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/preference/HtcPreference;->mShouldDisableView:Z

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    return-void
.end method

.method public setSummary(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    iput p1, p0, Lcom/htc/preference/HtcPreference;->mTitleRes:I

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/preference/HtcPreference;->mTitleRes:I

    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 1

    iget v0, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mHasSpecifiedLayout:Z

    :cond_0
    iput p1, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    return-void
.end method

.method public shouldCommit()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->shouldCommit()Z

    move-result v0

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldPersist()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
