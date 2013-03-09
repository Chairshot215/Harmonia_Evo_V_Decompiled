.class public Lcom/jme3/bounding/Intersection;
.super Ljava/lang/Object;
.source "Intersection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final findMinMax(FFFLcom/jme3/math/Vector3f;)V
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "minMax"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p3, p0, p0, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 50
    iget v0, p3, Lcom/jme3/math/Vector3f;->x:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 51
    invoke-virtual {p3, p1}, Lcom/jme3/math/Vector3f;->setX(F)Lcom/jme3/math/Vector3f;

    .line 53
    :cond_0
    iget v0, p3, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 54
    invoke-virtual {p3, p1}, Lcom/jme3/math/Vector3f;->setY(F)Lcom/jme3/math/Vector3f;

    .line 56
    :cond_1
    iget v0, p3, Lcom/jme3/math/Vector3f;->x:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    .line 57
    invoke-virtual {p3, p2}, Lcom/jme3/math/Vector3f;->setX(F)Lcom/jme3/math/Vector3f;

    .line 59
    :cond_2
    iget v0, p3, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    .line 60
    invoke-virtual {p3, p2}, Lcom/jme3/math/Vector3f;->setY(F)Lcom/jme3/math/Vector3f;

    .line 62
    :cond_3
    return-void
.end method

.method public static intersect(Lcom/jme3/bounding/BoundingBox;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z
    .locals 26
    .parameter "bbox"
    .parameter "v1"
    .parameter "v2"
    .parameter "v3"

    .prologue
    .line 90
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v22

    .line 93
    .local v22, vars:Lcom/jme3/util/TempVars;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    move-object/from16 v19, v0

    .line 94
    .local v19, tmp0:Lcom/jme3/math/Vector3f;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    move-object/from16 v20, v0

    .line 95
    .local v20, tmp1:Lcom/jme3/math/Vector3f;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    move-object/from16 v21, v0

    .line 97
    .local v21, tmp2:Lcom/jme3/math/Vector3f;
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    .line 98
    .local v4, e0:Lcom/jme3/math/Vector3f;
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/jme3/util/TempVars;->vect5:Lcom/jme3/math/Vector3f;

    .line 99
    .local v5, e1:Lcom/jme3/math/Vector3f;
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/jme3/util/TempVars;->vect6:Lcom/jme3/math/Vector3f;

    .line 101
    .local v6, e2:Lcom/jme3/math/Vector3f;
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/bounding/BoundingBox;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 102
    .local v3, center:Lcom/jme3/math/Vector3f;
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/jme3/bounding/BoundingBox;->getExtent(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    .line 109
    .local v7, extent:Lcom/jme3/math/Vector3f;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 110
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 111
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 114
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 115
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 116
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 122
    iget v0, v4, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v8

    .line 123
    .local v8, fex:F
    iget v0, v4, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v9

    .line 124
    .local v9, fey:F
    iget v0, v4, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v10

    .line 129
    .local v10, fez:F
    iget v0, v4, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v23, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    iget v0, v4, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v24, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v15, v23, v24

    .line 130
    .local v15, p0:F
    iget v0, v4, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v23, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    iget v0, v4, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v24, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v17, v23, v24

    .line 131
    .local v17, p2:F
    move/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 132
    .local v12, min:F
    move/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 133
    .local v11, max:F
    iget v0, v7, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v23, v0

    mul-float v23, v23, v10

    iget v0, v7, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v24, v0

    mul-float v24, v24, v9

    add-float v18, v23, v24

    .line 134
    .local v18, rad:F
    cmpl-float v23, v12, v18

    if-gtz v23, :cond_0

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v23, v0

    cmpg-float v23, v11, v23

    if-gez v23, :cond_1

    .line 135
    :cond_0
    invoke-virtual/range {v22 .. v22}, Lcom/jme3/util/TempVars;->release()V

    .line 136
    const/16 v23, 0x0

    .line 282
    :goto_0
    return v23

    .line 140
    :cond_1
    iget v0, v4, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v23, v0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    iget v0, v4, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v15, v23, v24

    .line 141
    iget v0, v4, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v23, v0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    iget v0, v4, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v17, v23, v24

    .line 142
    move/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 143
    move/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 144
    iget v0, v7, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v23, v0

    mul-float v23, v23, v10

    iget v0, v7, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v24, v0

    mul-float v24, v24, v8

    add-float v18, v23, v24

    .line 145
    cmpl-float v23, v12, v18

    if-gtz v23, :cond_2

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v23, v0

    cmpg-float v23, v11, v23

    if-gez v23, :cond_3

    .line 146
    :cond_2
    invoke-virtual/range {v22 .. v22}, Lcom/jme3/util/TempVars;->release()V

    .line 147
    const/16 v23, 0x0

    goto :goto_0

    .line 151
    :cond_3
    iget v0, v4, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v23, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    iget v0, v4, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v16, v23, v24

    .line 152
    .local v16, p1:F
    iget v0, v4, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v23, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    iget v0, v4, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v17, v23, v24

    .line 153
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 154
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 155
    iget v0, v7, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v23, v0

    mul-float v23, v23, v9

    iget v0, v7, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v24, v0

    mul-float v24, v24, v8

    add-float v18, v23, v24

    .line 156
    cmpl-float v23, v12, v18

    if-gtz v23, :cond_4

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v23, v0

    cmpg-float v23, v11, v23

    if-gez v23, :cond_5

    .line 157
    :cond_4
    invoke-virtual/range {v22 .. v22}, Lcom/jme3/util/TempVars;->release()V

    .line 158
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 161
    :cond_5
    iget v0, v5, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v8

    .line 162
    iget v0, v5, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v9

    .line 163
    iget v0, v5, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v10

    .line 166
    iget v0, v5, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v23, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    iget v0, v5, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v24, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v15, v23, v24

    .line 167
    iget v0, v5, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v23, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    iget v0, v5, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v24, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v17, v23, v24

    .line 168
    move/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 169
    move/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 170
    iget v0, v7, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v23, v0

    mul-float v23, v23, v10

    iget v0, v7, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v24, v0

    mul-float v24, v24, v9

    add-float v18, v23, v24

    .line 171
    cmpl-float v23, v12, v18

    if-gtz v23, :cond_6

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v23, v0

    cmpg-float v23, v11, v23

    if-gez v23, :cond_7

    .line 172
    :cond_6
    invoke-virtual/range {v22 .. v22}, Lcom/jme3/util/TempVars;->release()V

    .line 173
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 177
    :cond_7
    iget v0, v5, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v23, v0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    iget v0, v5, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v15, v23, v24

    .line 178
    iget v0, v5, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v23, v0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    iget v0, v5, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v17, v23, v24

    .line 179
    move/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 180
    move/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 181
    iget v0, v7, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v23, v0

    mul-float v23, v23, v10

    iget v0, v7, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v24, v0

    mul-float v24, v24, v8

    add-float v18, v23, v24

    .line 182
    cmpl-float v23, v12, v18

    if-gtz v23, :cond_8

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v23, v0

    cmpg-float v23, v11, v23

    if-gez v23, :cond_9

    .line 183
    :cond_8
    invoke-virtual/range {v22 .. v22}, Lcom/jme3/util/TempVars;->release()V

    .line 184
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 188
    :cond_9
    iget v0, v5, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v23, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    iget v0, v5, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v15, v23, v24

    .line 189
    iget v0, v5, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v23, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    iget v0, v5, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v16, v23, v24

    .line 190
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 191
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 192
    iget v0, v7, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v23, v0

    mul-float v23, v23, v9

    iget v0, v7, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v24, v0

    mul-float v24, v24, v8

    add-float v18, v23, v24

    .line 193
    cmpl-float v23, v12, v18

    if-gtz v23, :cond_a

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v23, v0

    cmpg-float v23, v11, v23

    if-gez v23, :cond_b

    .line 194
    :cond_a
    invoke-virtual/range {v22 .. v22}, Lcom/jme3/util/TempVars;->release()V

    .line 195
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 198
    :cond_b
    iget v0, v6, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v8

    .line 199
    iget v0, v6, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v9

    .line 200
    iget v0, v6, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v10

    .line 203
    iget v0, v6, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v23, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    iget v0, v6, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v24, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v15, v23, v24

    .line 204
    iget v0, v6, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v23, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    iget v0, v6, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v24, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v16, v23, v24

    .line 205
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 206
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 207
    iget v0, v7, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v23, v0

    mul-float v23, v23, v10

    iget v0, v7, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v24, v0

    mul-float v24, v24, v9

    add-float v18, v23, v24

    .line 208
    cmpl-float v23, v12, v18

    if-gtz v23, :cond_c

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v23, v0

    cmpg-float v23, v11, v23

    if-gez v23, :cond_d

    .line 209
    :cond_c
    invoke-virtual/range {v22 .. v22}, Lcom/jme3/util/TempVars;->release()V

    .line 210
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 214
    :cond_d
    iget v0, v6, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v23, v0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    iget v0, v6, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v15, v23, v24

    .line 215
    iget v0, v6, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v23, v0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    iget v0, v6, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v16, v23, v24

    .line 216
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 217
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 218
    iget v0, v7, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v23, v0

    mul-float v23, v23, v10

    iget v0, v7, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v24, v0

    mul-float v24, v24, v8

    add-float v18, v23, v24

    .line 219
    cmpl-float v23, v12, v18

    if-gtz v23, :cond_e

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v23, v0

    cmpg-float v23, v11, v23

    if-gez v23, :cond_f

    .line 220
    :cond_e
    invoke-virtual/range {v22 .. v22}, Lcom/jme3/util/TempVars;->release()V

    .line 221
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 225
    :cond_f
    iget v0, v6, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v23, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    iget v0, v6, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v16, v23, v24

    .line 226
    iget v0, v6, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v23, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    iget v0, v6, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v17, v23, v24

    .line 227
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 228
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 229
    iget v0, v7, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v23, v0

    mul-float v23, v23, v9

    iget v0, v7, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v24, v0

    mul-float v24, v24, v8

    add-float v18, v23, v24

    .line 230
    cmpl-float v23, v12, v18

    if-gtz v23, :cond_10

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v23, v0

    cmpg-float v23, v11, v23

    if-gez v23, :cond_11

    .line 231
    :cond_10
    invoke-virtual/range {v22 .. v22}, Lcom/jme3/util/TempVars;->release()V

    .line 232
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 242
    :cond_11
    move-object/from16 v0, v22

    iget-object v13, v0, Lcom/jme3/util/TempVars;->vect7:Lcom/jme3/math/Vector3f;

    .line 245
    .local v13, minMax:Lcom/jme3/math/Vector3f;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v23, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2, v13}, Lcom/jme3/bounding/Intersection;->findMinMax(FFFLcom/jme3/math/Vector3f;)V

    .line 246
    iget v0, v13, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v23, v0

    iget v0, v7, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-gtz v23, :cond_12

    iget v0, v13, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v23, v0

    iget v0, v7, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_13

    .line 247
    :cond_12
    invoke-virtual/range {v22 .. v22}, Lcom/jme3/util/TempVars;->release()V

    .line 248
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 252
    :cond_13
    move-object/from16 v0, v19

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v23, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v24, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2, v13}, Lcom/jme3/bounding/Intersection;->findMinMax(FFFLcom/jme3/math/Vector3f;)V

    .line 253
    iget v0, v13, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v23, v0

    iget v0, v7, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-gtz v23, :cond_14

    iget v0, v13, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v23, v0

    iget v0, v7, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v24, v0

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_15

    .line 254
    :cond_14
    invoke-virtual/range {v22 .. v22}, Lcom/jme3/util/TempVars;->release()V

    .line 255
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 259
    :cond_15
    move-object/from16 v0, v19

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v23, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v24, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2, v13}, Lcom/jme3/bounding/Intersection;->findMinMax(FFFLcom/jme3/math/Vector3f;)V

    .line 260
    iget v0, v13, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v23, v0

    iget v0, v7, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-gtz v23, :cond_16

    iget v0, v13, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v23, v0

    iget v0, v7, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v24, v0

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_17

    .line 261
    :cond_16
    invoke-virtual/range {v22 .. v22}, Lcom/jme3/util/TempVars;->release()V

    .line 262
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 270
    :cond_17
    move-object/from16 v0, v22

    iget-object v14, v0, Lcom/jme3/util/TempVars;->plane:Lcom/jme3/math/Plane;

    .line 272
    .local v14, p:Lcom/jme3/math/Plane;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Lcom/jme3/math/Plane;->setPlanePoints(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 273
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/jme3/bounding/BoundingBox;->whichSide(Lcom/jme3/math/Plane;)Lcom/jme3/math/Plane$Side;

    move-result-object v23

    sget-object v24, Lcom/jme3/math/Plane$Side;->Negative:Lcom/jme3/math/Plane$Side;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_18

    .line 274
    invoke-virtual/range {v22 .. v22}, Lcom/jme3/util/TempVars;->release()V

    .line 275
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 280
    :cond_18
    invoke-virtual/range {v22 .. v22}, Lcom/jme3/util/TempVars;->release()V

    .line 282
    const/16 v23, 0x1

    goto/16 :goto_0
.end method
