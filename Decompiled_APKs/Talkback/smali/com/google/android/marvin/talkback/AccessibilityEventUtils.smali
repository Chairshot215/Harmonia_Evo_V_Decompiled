.class public Lcom/google/android/marvin/talkback/AccessibilityEventUtils;
.super Ljava/lang/Object;
.source "AccessibilityEventUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static eventEquals(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .parameter "first"
    .parameter "second"

    .prologue
    const/4 v0, 0x0

    .line 135
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 141
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_6

    .line 142
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    .line 148
    :cond_2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_7

    .line 149
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    .line 155
    :cond_3
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_8

    .line 159
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    .line 165
    :cond_4
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_9

    .line 166
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    .line 172
    :cond_5
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 178
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getAddedCount()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAddedCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 181
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->isChecked()Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isChecked()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 184
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->isEnabled()Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isEnabled()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 187
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 190
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->isFullScreen()Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isFullScreen()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 193
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getCurrentItemIndex()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getCurrentItemIndex()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 196
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 199
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->isPassword()Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isPassword()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 202
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getRemovedCount()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getRemovedCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 205
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 208
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 145
    :cond_6
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    .line 152
    :cond_7
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 162
    :cond_8
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    .line 169
    :cond_9
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0
.end method

.method public static eventMatchesClassByType(Landroid/content/Context;Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/Class;)Z
    .locals 5
    .parameter "context"
    .parameter "event"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/accessibility/AccessibilityEvent;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 68
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v3

    .line 72
    :cond_1
    invoke-static {}, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->getInstance()Lcom/googlecode/eyesfree/utils/ClassLoadingManager;

    move-result-object v0

    .line 73
    .local v0, classLoader:Lcom/googlecode/eyesfree/utils/ClassLoadingManager;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 74
    .local v1, className:Ljava/lang/CharSequence;
    const/4 v4, 0x0

    invoke-virtual {v0, p0, v1, v4}, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->loadOrGetCachedClass(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Class;

    move-result-object v2

    .line 76
    .local v2, nodeClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    goto :goto_0
.end method

.method public static getEventAggregateText(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "event"

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v0, aggregator:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    .line 115
    .local v1, eventText:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 117
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/CharSequence;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 127
    return-object v0

    .line 118
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 120
    .local v3, text:Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v0, v4}, Lcom/google/android/marvin/utils/StringBuilderUtils;->appendWithSeparator(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getEventText(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "event"

    .prologue
    .line 92
    if-nez p0, :cond_1

    .line 93
    const/4 v0, 0x0

    .line 101
    :cond_0
    :goto_0
    return-object v0

    .line 96
    :cond_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 98
    .local v0, contentDescription:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-static {p0}, Lcom/google/android/marvin/talkback/AccessibilityEventUtils;->getEventAggregateText(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public static isViewGroup(Landroid/content/Context;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "context"
    .parameter "event"

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    .line 52
    :cond_0
    const-class v0, Landroid/view/ViewGroup;

    .line 51
    invoke-static {p0, p1, v0}, Lcom/google/android/marvin/talkback/AccessibilityEventUtils;->eventMatchesClassByType(Landroid/content/Context;Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method
